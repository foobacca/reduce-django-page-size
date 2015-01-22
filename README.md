# Reduce Django Page Size Talk

## Compiling and viewing the presentation

The core of the talk is in `pagesize-slides.md` and is intended to be processed by [mdpress](http://egonschiele.github.io/mdpress/) (which converts markdown into [impress.js](http://bartaz.github.io/impress.js) presentations) - so:

```
gem install mdpress
mdpress -r pagesize-slides.md
```

`mdpress -r` will compile the presentation and open it in your browser.  You can then make it full screen and press space to go through the slides.

While [presentation-notes.md](https://github.com/foobacca/reduce-django-page-size/blob/0062098c3f0085fa622a87db5b4df50de1b0760d/presentation-notes.md) has the notes I read from while talking to the slides.

## Sources and references

### Battery Usage

These figures are from a fascinating paper about battery usage on a typical android phone, titled "Who Killed My Battery: Analyzing Mobile Browser Energy Consumption" ([paper](http://crypto.stanford.edu/~dabo/pubs/papers/browserpower.pdf) and [presentation](http://cdn.oreillystatic.com/en/assets/1/event/93/Who Killed My Battery_ Analyzing Mobile Browser Energy Consumption Presentation 1.pdf)).

### Gzip Compression

- apache mod_deflate [docs](http://httpd.apache.org/docs/2.2/mod/mod_deflate.html) and [tutorial](http://www.cyberciti.biz/tips/speed-up-apache-20-web-access-or-downloads-with-mod_deflate.html)
- [nginx HttpGzipModule](http://wiki.nginx.org/HttpGzipModule)
- [mod_pagespeed](https://developers.google.com/speed/pagespeed/module)

### HTML Minification

[django-htmlmin](https://github.com/cobrateam/django-htmlmin)

[htmlmin](https://github.com/mankyd/htmlmin) and [docs](https://htmlmin.readthedocs.org/en/latest/)

### CSS/JS

- [django-pipeline](http://django-pipeline.readthedocs.org/)
- [webassets](http://webassets.readthedocs.org/)
- [django-compressor](http://django-compressor.readthedocs.org/) (Note NOT django-compress which is no longer maintained).

- [jquip](https://github.com/mythz/jquip)

### Images

- [easy-thumbnails](http://easy-thumbnails.readthedocs.org/)
- [image diet](https://github.com/samastur/image-diet)

### Bootstrap

The [customize page](http://getbootstrap.com/customize/)

### Tools

[Loband Simulator](http://www.loband.org/loband/simulator.jsp)

OS X development tools include the [Network Link Conditioner](http://9to5mac.com/2011/08/10/new-in-os-x-lion-network-link-conditioner-utility-lets-you-simulate-internet-and-bandwidth-conditions/) which has some preset link types, or lets you specify your own combination of speed, latency and dropped packets.

Linux has [tc/netem](http://www.linuxfoundation.org/collaborate/workgroups/networking/netem) which is command line, but means it can be scripted quite easily.

Windows has a few including [Network Emulation in Visual Studio](http://blogs.msdn.com/b/lkruger/archive/2009/06/08/introducing-true-network-emulation-in-visual-studio-2010.aspx)

Look at these stack overflow questions for other things to try:

* http://stackoverflow.com/questions/11832505/simulating-a-bad-internet-connection/
* http://stackoverflow.com/questions/1094760/network-tools-that-simulate-slow-network-connection

The `tc` script used in the demo is in the file [badconn.sh](https://github.com/foobacca/reduce-django-page-size/blob/master/badconn.sh) - feel free to use and modify it yourself.
