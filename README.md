# Reduce Django Page Size Talk

## Compiling and viewing the presentation

The core of the talk is in `pagesize-slides.md` and is intended to be processed by [mdpress](http://egonschiele.github.io/mdpress/) (which converts markdown into [impress.js](http://bartaz.github.io/impress.js) presentations) - so:

```
gem install mdpress
mdpress -r pagesize-slides.md
```

`mdpress -r` will complile the presentation and open it in your browser.  You can then make it full screen and press space to go through the slides.

## Sources and references

### Battery Usage

These figures are from a fascinating paper about battery usage on a typical android phone, titled "Who Killed My Battery: Analyzing Mobile Browser Energy Consumption" ([paper](http://crypto.stanford.edu/~dabo/pubs/papers/browserpower.pdf) and [presentation](http://cdn.oreillystatic.com/en/assets/1/event/93/Who Killed My Battery_ Analyzing Mobile Browser Energy Consumption Presentation 1.pdf) ).
