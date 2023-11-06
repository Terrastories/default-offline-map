# Terrastories Default Offline Map

This repository provides open-license OpenStreetMap vector map tiles (`pmtiles` generated from [Protomaps basemaps](https://github.com/protomaps/basemaps)) and accompanying style, font glyphs, and sprites to use as a self-hosted map with Terrastories. The vector map tiles are for the entire planet, and go up to a maximum zoom level of 8. (Read more about zoom levels [here](https://wiki.openstreetmap.org/wiki/Zoom_levels))

The vector map style used is the `light` style from Protomaps. For other styles, see the [Protomaps documentation](https://docs.protomaps.com/basemaps/styles).

To use these offline map assets, 

1. Download the files in this repository and place them in the Terrastories `/map/` directory.

2. The pmtiles file is too large to host on this repository. Instead, download the `planet.pmtiles` file [here](https://t.ly/OTZpR) (369mb) and then place it in the `map/` directory.

If you want to create your own OSM map tiles, you can do so with the Protomaps [OpenStreetMap Extracts](http://app.protomaps.com/downloads/osm) tool or by running `pmtiles extract https://build.protomaps.com/<yyyymmdd>.pmtiles planet.pmtiles --maxzoom=8` with your desired zoom level and date. You can also specify geography by adding a `--region` flag with a GeoJSON Polygon, Multipolygon, Feature, or FeatureCollection; see the [go-pmtiles](https://github.com/protomaps/go-pmtiles) repository for more.

The structure of the repo and paths in the the `style.json` file are set up for self-hosting maps in Terrastories, but you can use these assets in any environment that utilizes Maplibre GL JS and supports the `pmtiles` protocol.

**Note**: the Terrastories `bin/setup` script will download and put these files in the right place for you, if you answer the prompt that you are building for offline, and you have not already provided your own style and tiles.
