# Terrastories Default Offline Map

This repository provides open-license offline map tiles (`pmtiles` generated from OpenMapTiles) and accompanying style, font glyphs, and sprites to use with Terrastories.

To use these offline tiles, 

1. Download these files and place them in the Terrastories `/map/` directory.

2. The pmtiles file is too large to host on this repository. Instead, download the `tiles.pmtiles` file [here](https://bit.ly/46NxckC) and then place it in the `tiles/` directory.

The structure of the repo and paths in the the `style.json` file are set up for self-hosting maps in Terrastories, but you can use these assets in any environment that utilizes Maplibre GL JS and supports the `pmtiles` protocol.

**Note**: the `bin/setup` script in Terrastories will download and put these files in the right place for you, if you answer the prompt that you are building for offline, and you have not provided your own style and tiles.
