#!/bin/sh
cat meta.css > style.mapcss
grep -h -v '^meta' \
 landscape.mapcss linefeatures.mapcss roads.mapcss \
 trailvisibility.mapcss routes.mapcss \
 buildings.mapcss symbols.mapcss \
 ski-nordic.mapcss ski-alpine.mapcss \
 hidenodes.css \
 >> style.mapcss
zip -r mapcss-hiking.zip style.mapcss readme.md symbols/[a-z]*.svg
