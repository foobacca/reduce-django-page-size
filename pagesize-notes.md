flour and treacle
=================

![waiting for website](slow-internet-connection--300x294.jpg)

---

why should you care?

- less developed countries
- mobile internet
- reduce bandwidth on server side
- overloaded wifi ...
- SPEED

---

Gzip compression on server

- apache - mod_deflate
- nginx - HttpGzipModule

(though SSL data leakage with compressed data ...)

---

HTML

- django-htmlmin
  - young and a bit buggy tbh
  - and only comes on when DEBUG=False - so if you get weird bugs in production ...
- (also just found htmlmin that might be better - but only found it this morning)

---

CSS/JS general

- django-pipeline (or django-compressor)

works when you run `./manage.py collectstatic`

---

jquery -> jquip

- "90% of the functionality, 10% of the size"

Use CDN for jquery, and specific version number

---

bootstrap

- don't hit "download", go to "customize" and download just what you need

---

image-diet

- https://github.com/samastur/image-diet
- PIL is great, but images are really not optimised
- if you're using easy_thumbnails, it just works (tm)
- saves 1/3 to 1/2 of file size while not visibly different

