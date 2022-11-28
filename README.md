# Terrastories Default Offline Map

This repository provides open-license offline map tiles (from OpenMapTiles) and accompanying style, font glyphs, and sprites to use with Terrastories.

To use these offline tiles, 

1. Download these files and place them in the Terrastories `tileserver/data/` directory.

2. The mbtiles file is too large to host on this repository. Instead, download the `tiles.mbtiles` file [here](https://bit.ly/39EdYoQ) and then place it in the `mbtiles/` directory.

The structure of the repo is set up to be used with [Tileserver-GL](https://github.com/maptiler/tileserver-gl) which is what serves locally hosted map tiles in Terrastories, but you can use map tiles with any other tileserver that uses the Mapbox style specification.

Note: the `bin/setup` script in Terrastories will download and place these files for you if you specify that you are building for offline, and you have not provided your own style and tiles.