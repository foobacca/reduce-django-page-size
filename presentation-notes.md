Alternative talk name - "Easy solutions to the website obesity crisis"

## Your web pages are too big

- Hello, who I am
- slides on github, link at end, will also tweet link

pic

- The Guardian is 1.7 MB (or 0.6MB with primed cache)
- BBC news is 0.8 MB (or 117kb with primed cache)
- Django docs is 52kb (or 27kb with primed cache)

## why should you care?

pic

- you've got a fast internet connection
- works fine for me

## why should you care?

- african universities often have expensive, slow, poorly managed connections (IT staff)
- anyone here given up loading a web page on a train because it took too long to load
- snappy websites have better retention of users

## Types of poor connection

different types

- speed - TODO: lookup values - mobile ...
- latency - near, far, satellite, buffer queues
- dropped packets - 1% or 2% and things start getting bad - timeout, resend

- TODO: measure conference
netstat -s | grep retransmit
...
1253853 segments send out
6598 segments retransmited
...

## why should you care?

easy win - let me show you

## Gzip compression on server

SSL vuln ? (BEAST and BREACH)

mod page speed

- available for both apache and nginx
- does more than just compression - one stop shop
- combine and minify js and css
- resize images and remove metadata
- and more

## Caching

The best way to get quicker is to not do anything, so
Allow your clients to cache
etag - allow client to ask "Has this changed?"

## HTML minification

Example - you've written nicely formatted templates with if, for loops ...
-> spaced out HTML

Show example from BBC News website

- django-htmlmin
  - gave us 10-20% reduction on HTML (and still after gzip)
  - young and a bit buggy tbh
  - and only comes on when DEBUG=False - so if you get weird bugs in production ...
  - can be used outside django
- htmlmin
  - also young but looks like it's more efficient
  - not as much django integration

TODO: show django snippets

## CSS/JS minification

TODO: more detailed instructions?

- all give option of using external tools (mostly node.js/java based)
- some have built in options

## jquery -> jquip

- core jquip is 6.6 kB
- If you do need full-fat jQuery, use a CDN, and specify the full version number

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
TODO: what sites to show? bbc news, django docs

CUP

- full fat http://journals.cambridge.org/ 913k (empty) 127k (full)
- mobile/low b/w http://jnls.cup.org/ 107k (empty) 3.6k (full) and 50k is images
  to make the submit button - could be CSS instead

## Thank you

TODO: Add: aptivate and twitter logo

