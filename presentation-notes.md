## Your web pages are too big

pic

## why should you care?

pic

## why should you care?

text

## Types of poor connection

different types

- speed - TODO: lookup values - mobile ...
- latency - near, far, satellite - TODO: look up values
- dropped packets - 1% or 2% and things start getting bad

- TODO: measure conference
netstat -s
...
1253853 segments send out
6598 segments retransmited
...

## why should you care?

easy win - let me show you

## Gzip compression on server

SSL vuln ? (BEAST and ...)

## Caching

Allow your clients to cache

## HTML minification

Example - you've written nicely formatted templates with if, for loops ...
-> spaced out HTML

Show example from BBC News website

- django-htmlmin
  - young and a bit buggy tbh
  - and only comes on when DEBUG=False - so if you get weird bugs in production ...
  - can be used outside django
- htmlmin
  - also young but looks like it's more efficient
  - not as much django integration

TODO: show django snippets

## CSS/JS minification

TODO: more detailed instructions?

## jquery -> jquip

- core jquip is 6.6 kB
If you do need full-fat jQuery, use a CDN, and specify the full version number

## bootstrap CSS

TODO: image "only take what you need"

show screen - load in tab before session starts

## images

resizing in browser - more bandwidth and more battery
mention easy_thumbnails

## image-diet

## Tools for testing

demo with loband simulator?
demo with tc
TODO: what sites to show?

## Examples of low bandwidth sites

Show in browser - log out, show firebug net tab, yslow
TODO: what sites to show?

## Thank you

TODO: Add: aptivate and twitter logo

