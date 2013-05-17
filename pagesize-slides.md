![waiting for website](/home/hamish/Documents/lightningtalk/slow-internet-connection--300x294.jpg)

---

## why should you care?

---

## Gzip compression on server

- apache - mod_deflate
- nginx - HttpGzipModule

---

## HTML minification

- django-htmlmin 
  - young and a bit buggy tbh 
  - and only comes on when DEBUG=False - so if you get weird bugs in production ...
- (also just found htmlmin that might be better - but only found it this morning)

---

## CSS/JS minification

- django-pipeline (or django-compressor)

works when you run `./manage.py collectstatic`

---

## jquery -> jquip

- "90% of the functionality, 10% of the size"

If you do need full-fat jQuery, use a CDN, and specify the full version number

---

## bootstrap CSS

- don't hit "download", go to "customize" and download just what you need

---

## image-diet

- https://github.com/samastur/image-diet
- if you're using easy_thumbnails, it just works (tm)
- saves 1/3 to 1/2 of file size while not visibly different

---

https://github.com/foobacca/reduce-django-page-size-lightningtalk
