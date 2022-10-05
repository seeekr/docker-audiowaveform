docker-audiowaveform
====================

This project contains a Dockerfile for building the excellent [bbcrd/audiowaveform](https://github.com/bbcrd/audiowaveform) tool as a docker image.

Also bundles SoX (with `soxi` binary) with the image, for easier usage, e.g.:

```
# generate png for complete mp3, requires passing the end time of the track to audiowaveform
audiowaveform -i audio.mp3 -o waveform.png -e `soxi -D audio.mp3`
```

audiowaveform is part of a stack of tools that BBC has created and open-sourced that allows display and rich interaction with audio waveform images / UI elements. Check out [http://waveform.prototyping.bbc.co.uk/](http://waveform.prototyping.bbc.co.uk/) for full info.
