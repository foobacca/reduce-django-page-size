# Reduce Django Page Size Talk

## Compiling and viewing the presentation

The core of the talk is in `pagesize-slides.md` and is intended to be processed by [mdpress](http://egonschiele.github.io/mdpress/) (which converts markdown into [impress.js](http://bartaz.github.io/impress.js) presentations) - so:

```
gem install mdpress
mdpress -r pagesize-slides.md
```

`mdpress -r` will compile the presentation and open it in your browser.  You can then make it full screen and press space to go through the slides.

## Sources and references

### Battery Usage

These figures are from a fascinating paper about battery usage on a typical android phone, titled "Who Killed My Battery: Analyzing Mobile Browser Energy Consumption" ([paper](http://crypto.stanford.edu/~dabo/pubs/papers/browserpower.pdf) and [presentation](http://cdn.oreillystatic.com/en/assets/1/event/93/Who Killed My Battery_ Analyzing Mobile Browser Energy Consumption Presentation 1.pdf)).

### Tools

OS X development tools include the [Network Link Conditioner](http://9to5mac.com/2011/08/10/new-in-os-x-lion-network-link-conditioner-utility-lets-you-simulate-internet-and-bandwidth-conditions/) which has some preset link types, or lets you specify your own combination of speed, latency and dropped packets.

Linux has [tc/netem](http://www.linuxfoundation.org/collaborate/workgroups/networking/netem) which is command line, but means it can be scripted quite easily.

Windows has a few including [Network Emulation in Visual Studio](http://blogs.msdn.com/b/lkruger/archive/2009/06/08/introducing-true-network-emulation-in-visual-studio-2010.aspx)

Look at these stack overflow questions for other things to try:

* http://stackoverflow.com/questions/11832505/simulating-a-bad-internet-connection/
* http://stackoverflow.com/questions/1094760/network-tools-that-simulate-slow-network-connection

The `tc` script used in the demo is in the file [badconn.sh](https://github.com/foobacca/reduce-django-page-size/blob/master/badconn.sh) - feel free to use and modify it yourself.
