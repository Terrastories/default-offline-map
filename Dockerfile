FROM alpine:latest AS downloader

RUN apk --no-cache add --update curl

# Download tiles.mbtiles for default style.
RUN curl -fsSL "https://bit.ly/39EdYoQ" -o "/tmp/tiles.mbtiles"

FROM maptiler/tileserver-gl:v4.7.0 AS final

# Default Tileserver config
COPY ./config.json /data/config.json

# Copy in Tileserver fonts, sprites, and styles.
COPY ./fonts /data/fonts
COPY ./sprites /data/sprites
COPY ./styles /data/styles

# Copy in mbtiles download for downloader
COPY --from=downloader /tmp/tiles.mbtiles /data/mbtiles/tiles.mbtiles
