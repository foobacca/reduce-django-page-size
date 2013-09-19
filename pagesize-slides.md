## Your web pages are too big

![waiting for website](../img/slow-internet-connection--300x294.jpg)

---

## why should you care?

![why should I care](../img/shrug.jpg)

---

## why should you care?

- less developed countries
- mobile internet
- reduce bandwidth on usage server side
- overloaded wifi ...
- SPEED

---

## Types of poor connection

- *slow*

![slow](../img/tortoise-dinosaur.jpg)

---

## Types of poor connection

- slow
- *latency*

![latency](../img/high_throw.png)

---

## Types of poor connection

- slow
- latency
- *dropped packets*

![dropped](../img/dropped.jpg)

---

## why should you care?

- less developed countries
- mobile internet
- reduce bandwidth usage on server side
- overloaded wifi ...
- SPEED
- *and it's an easy win*

---

## Gzip compression on server

![squash it](../img/Orange-Crush.jpg)

- apache - mod_deflate
- nginx - HttpGzipModule
- mod_pagespeed from Google

---

## Caching

TODO: image/text - ping output? - reuse old clothing?

---

## HTML minification

- django-htmlmin
  - https://github.com/cobrateam/django-htmlmin
- htmlmin
  - https://github.com/mankyd/htmlmin

---

## CSS/JS minification

- django-pipeline
- django-compressor
- webassets

---

## jquery -> jquip

- "90% of the functionality, 10% of the size"
- https://github.com/mythz/jquip

---

## bootstrap CSS

![squash it](../img/use-what-you-need.jpg)

- don't hit "download", go to "customize" and download just what you need

---

## images

- At the least, do your image resizing on the server
- easy-thumbnails will do this for you

---

## image-diet

- https://github.com/samastur/image-diet
- PIL is great, but images are really not optimised
- if you're using easy-thumbnails, it just works (tm)
- saves 1/3 to 1/2 of file size while not visibly different

---

## Tools for testing

- Firebug net tab, Yslow
- Loband Simulator
- Mac: Network Link Conditioner (GUI), ipfw/dummynet
- Linux: `tc` scripts
- Windows: Fiddler, TMNetSim, Network Emulation in Visual Studio, Charles Proxy and others

---

## Examples of low bandwidth sites

- http://www.aptivate.org/
- http://www.3ieimpact.org/
- http://www.inasp.info/

---

## Thank you

https://github.com/foobacca/reduce-django-page-size

I am Hamish Downer, @hgd20 on twitter, work at Aptivate.

http://www.aptivate.org/
