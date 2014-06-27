
# MapCSS for OSM hiking maps

A set of [MapCSS][] style sheets that implements conventions often
seen in Norwegian hiking and nordic skiing maps.


## Cartography and symbols

The cartography in these maps are adopted from hiking maps published
by [Asker Skiklubb](http://asker-skiklubb.no/), which are essentially
orienteering maps that have been cleaned up visually, and added POIs,
place names and highlighting marked hiking trails and skiing tracks.

The hiking map includes visualization of the following tags:

- `trail_visibility=bad|intermediate` -- indistinct trails are shown with open dashing
- `tracktype=grade1-2` -- often used gravel tracks (no:turveier)
- `tracktype=grade3-5` -- tracks from tractors or logging machines
- `trailblazed=yes` (and `marked_trail=blue` for compatibility)
- `route=hiking|bicycle|mtb` relations

The winter features will add rendering of skiing tracks:

- `piste:type=nordic|downhill`
- `piste:difficulty=*`
- `piste:grooming=*`

Additionally, hiking related POIs are symbolized, including

- serviced, provisioned or unlocked cabins and emergency shelters
- lean-tos
- viewpoints

These symbols are taken from the
[Symbol fonts for recreation and sport][3] standard created by
the [Norwegian Mapping Authority](http://www.kartverket.no/).

Buildings are drawn differently according to a scheme used in
[Specification for cartography on displays][4] to keep commercial
and residential buildings apart.

The style sheets are modular, making reuse and customization easier.


## Installation and usage

Open [JOSM][] **Preferences** and add the style sheet to your
**Map Paint Styles** list by pasting this URL:

<http://www.vidargundersen.com/mapcss-hiking.zip>

These style sheets are intended used on dark background (85% gray),
and will override the `color.background` as well as the
area object opacity (`mappaint.fillalpha`) settings.

To use the modules separately, add the raw view URL:

<https://github.com/vibrog/mapcss-hiking/raw/master/roads.mapcss>

Loading the style sheets in this order will give an intended result:

    @import("landscape.mapcss");
    @import("roads.mapcss");
    @import("trailvisibility.mapcss");
    @import("routes.mapcss");
    @import("buildings.mapcss");
    @import("symbols.mapcss");

For winter activities:

    @import("ski-nordic.mapcss");
    @import("ski-alpine.mapcss");

Hide node handles to reduce clutter:

    @import("hidenodes.mapcss");

More: [Details on JOSM's MapCSS implementation][5].


[MapCSS]: http://wiki.openstreetmap.org/wiki/MapCSS
[JOSM]: http://josm.openstreetmap.de/
[3]: http://www.kartverket.no/Documents/Standard/Bransjestandarder%20utover%20SOSI/symbol.pdf
  "Symbolfonter for friluftsliv og sport (1997). Statens kartverk Landkartdivisjonen, ISBN 82-90408-52-8"
[4]: http://www.kartverket.no/Documents/Kart/N50-N5000%20Kartdata/Spesifikasjon%20Skjermkartografi%2020091102.pdf
  "Spesifikasjon for skjermkartografi"
[5]: http://josm.openstreetmap.de/wiki/Help/Styles/MapCSSImplementation
