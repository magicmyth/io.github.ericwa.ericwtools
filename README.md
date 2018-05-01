# Flatpak build manifest for ericw-tools

[ericw-tools](https://github.com/ericwa/ericw-tools) is a collection of command line utilities for building Quake levels and working with various Quake file formats. This repository contains a Flatpak Builder manifest for compiling ericw-tools into a Flatpak package.

To build everything from source and install your own flatpak bundle of the app, clone this repository and from within its directory run:
```
flatpak-builder --install --user --disable-updates --force-clean ericwtools io.github.ericwa.ericwtools.json
```

Once that has finished you can compile a Quake map by running the command within the Quake installation:
```
flatpak run io.github.ericwa.ericwtools id1/maps/YOUR_MAP.map
```

That will run all the build tools on the map, creating a final bsp.

## Running individual tools
The flatpak contains all the ericw-tools within it: [bspinfo](http://ericwa.github.io/ericw-tools/doc/bspinfo.html), [bsputil](http://ericwa.github.io/ericw-tools/doc/bsputil.html), [light](http://ericwa.github.io/ericw-tools/doc/light.html), [qbsp](http://ericwa.github.io/ericw-tools/doc/qbsp.html), [vis](http://ericwa.github.io/ericw-tools/doc/vis.html). Each can be used by calling them via the flatpak-run switch: `--command`. E.g:
```
flatpak run --command=light io.github.ericwa.ericwtools -threads 4 -extra4 YOUR_MAP.bsp
```
