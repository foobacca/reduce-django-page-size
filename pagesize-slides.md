## Your web pages are too big

![waiting for website](/home/hamish/Documents/lightningtalk/slow-internet-connection--300x294.jpg)

---

## why should you care?

![why should I care](/home/hamish/Documents/lightningtalk/250px_Shrug.jpeg)

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

## Gzip compression on server

- apache - mod_deflate
- nginx - HttpGzipModule

![squash it](/home/hamish/Documents/lightningtalk/Orange-Crush.jpg)

---

## HTML minification

- django-htmlmin
  - young and a bit buggy tbh
  - and only comes on when DEBUG=False - so if you get weird bugs in production ...
- html - found it this morning, might be worth looking at

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

