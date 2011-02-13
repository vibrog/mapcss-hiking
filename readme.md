
# MapCSS for OSM hiking maps

A set of [MapCSS][1] style sheets that implements conventions often
seen in Norwegian hiking and nordic skiing maps.

## Tags

The summer map is a hiking map and includes support for these tags:

- `trail_visibility=*` -- indistinct trails are shown with open dashing
- `tracktype=grade1-2` -- often used on "carriage trails" (no:trillestier)
- `tracktype=grade3-5` -- tracks from tractors or logging machines
- `trailblazed=yes` (and `marked_trail=blue` for compatibility)
- `route=foot|hiking` relations

The winter map tones down paths and instead shows skiing tracks:

- `piste:type=nordic|downhill`
- `piste:difficulty=*`
- `piste:grooming=*`

Additionally, hiking related POIs are shown from lower zoom levels.
For example

- trailhead parking lots (no:utfartsparkering); `amenity=parking, hiking=yes`
- sports chapels; `amenity=place_of_worship, hiking=yes`,
- serviced or unlocked cabins and emergency shelters,
- lean-tos and
- viewpoints.

The style sheets are modular, making reuse and customization easier.

It can be forked from the
[GitHub repository](http://github.com/vibrog/mapcss-hiking).

Maintained by Vidar Bronken Gundersen


## Cartography and symbols

The cartography in these maps are adopted from hiking maps published
by [Asker Skiklubb](http://asker-skiklubb.no/), which are essentially
orienteering maps that have been cleaned up visually, and added POIs,
place names and highlighting marked hiking trails and skiing tracks.

Symbols are taken from a standard created by the
[Norwegian Mapping Authority](http://www.statkart.no/)
that are now freely available and used with permission.

  *Symbolfonter for friluftsliv og sport
  [en:Symbol fonts for recreation and sport]* (1997).
  Statens kartverk Landkartdivisjonen, ISBN 82-90408-52-8, retrieved from
  <http://www.statkart.no/filestore/Standardisering/docs/symbol.pdf>


## Usage

[JOSM][2] settings:
I'm using these style sheets with a dark canvas
`color.background=#222222` (87% gray) and
`mappaint.fillalpha=40`
which is equivalent to the following [MapCSS][1]:

    canvas { background-color:#222; }
    way:area { fill-opacity:0.4; }

Open **Preferences** and add the wanted modules to your
**Map Paint Styles** list. Remember that order is relevant,
so loading style sheets in this order will give an intended result:

    @import("landscape.mapcss");
    @import("roads.mapcss");
    @import("trailvisibility.mapcss");
    @import("hiking-routes.mapcss");

The `@import`-rule is not yet supported by [JOSM][2].


[1]: http://wiki.openstreetmap.org/wiki/MapCSS
[2]: http://josm.openstreetmap.de/
