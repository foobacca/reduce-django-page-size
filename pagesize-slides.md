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

- slow
- latency
- dropped packets

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

---

## HTML minification

- django-htmlmin
  - https://github.com/cobrateam/django-htmlmin
- htmlmin
  - https://github.com/mankyd/htmlmin

---

## CSS/JS minification

- django-pipeline (or django-compressor)

works when you run `./manage.py collectstatic`

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
- easy_thumbnails will do this for you

---

## image-diet

- https://github.com/samastur/image-diet
- PIL is great, but images are really not optimised
- if you're using easy_thumbnails, it just works (tm)
- saves 1/3 to 1/2 of file size while not visibly different

---

## Tools for testing

- Firebug net tab, Yslow
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

Presentation source at https://github.com/foobacca/reduce-django-page-size

I am Hamish Downer, @hgd20 on twitter, work at Aptivate.

http://www.aptivate.org/
