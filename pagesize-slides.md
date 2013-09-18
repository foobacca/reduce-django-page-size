## Your web pages are too big

![waiting for website](../slow-internet-connection--300x294.jpg)

---

## why should you care?

![why should I care](../250px_Shrug.jpeg)

---

## why should you care?

- less developed countries
- mobile internet
- reduce bandwidth on usage server side
- overloaded wifi ...
- SPEED

---

## why should you care?

- less developed countries
- mobile internet
- reduce bandwidth usage on server side
- overloaded wifi ...
- SPEED
- and it's an easy win

---

### Types of poor connection

- slow
- latency
- dropped packets

---

## Gzip compression on server

- apache - mod_deflate
- nginx - HttpGzipModule

![squash it](../Orange-Crush.jpg)

---

## HTML minification

- django-htmlmin
  - young and a bit buggy tbh
  - and only comes on when DEBUG=False - so if you get weird bugs in production ...
- htmlmin - found it this morning, might be worth looking at

---

## CSS/JS minification

- django-pipeline (or django-compressor)

works when you run `./manage.py collectstatic`

---

## jquery -> jquip

- "90% of the functionality, 10% of the size"
- core jquip is 6.6 kB

If you do need full-fat jQuery, use a CDN, and specify the full version number

---

## bootstrap CSS

- don't hit "download", go to "customize" and download just what you need

---

## image-diet

- https://github.com/samastur/image-diet
- PIL is great, but images are really not optimised
- if you're using easy_thumbnails, it just works (tm)
- saves 1/3 to 1/2 of file size while not visibly different

---

## Tools for testing

- Mac: Network Link Conditioner (GUI), ipfw/dummynet
- Linux: `tc` scripts
- Windows: Fiddler, TMNetSim, Network Emulation in Visual Studio, Charles Proxy and others

---

## Examples of low bandwidth sites

- http://www.aptivate.org/
- http://www.3ieimpact.org/
- http://www.inasp.info/
