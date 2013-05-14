#!/bin/sh
cat meta.css > style.mapcss
grep -h -v '^meta' \
 landscape.mapcss roads.mapcss \
 trailvisibility.mapcss routes.mapcss \
 buildings.mapcss symbols.mapcss \
 ski-nordic.mapcss ski-alpine.mapcss \
 hidenodes.css \
 >> style.mapcss
#java -jar /Library/Java/yuicompressor-2.4.jar --type css \
# -o style.min.mapcss style.mapcss
#mv style.min.mapcss style.mapcss
zip -r mapcss-hiking.zip style.mapcss readme.md symbols/[a-z]*.svg
