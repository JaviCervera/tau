# Micron
Micron is a minimalist game engine licensed under the Zlib license. Its main features are:

* OpenGL fixed pipeline graphics.
* Allegro for window, input and audio management.
* Lua scripting

The core runtime has been written in pure C, with the goal of being easily portable to any platform. It has currently been tested on Windows, macOS and Linux.

Since Micron uses submodules, to correctly clone the repository, do:

`git clone --recursive https://github.com/JaviCervera/micron.git`

If you have already cloned the repository without initializing submodules, you can do it afterwards running this on the Micron repository:

`git submodule update --init`

To pull changes from the repository, including its submodules, do:

`git pull --recurse-submodules`

## Building on Windows
You should have **Cmake** installed and added to your `PATH` to build the engine. In order to compile, just double click the `build.bat` file. The library `libmicron.dll` will be created on the `_build` folder.

Once built, you can drastically reduce the size of the generated `libmicron.dll` library by running `compress.exe`, which will use the UPX compressor.

To run the examples, use the `run.bat` script. You must have previously built the engine.

## Building on macOS
You should have **Cmake** and **swig3.0** installed to be able to build the engine. You can install them for example with [Brew](https://brew.sh/). After installing Brew on your system, type:

`$brew install cmake`
`$brew install swig3.0`

Then, just double click from Finder on `build.command` and the library file `libmicron.dylib` will be created on the `_build` folder.

To run the examples, use the `run.command` script. You must have previously built the engine.

## Building on Linux
You should have **Cmake** and **swig3.0** installed to be able to build the engine. For example, to install them on Ubuntu, type:

`$sudo apt install cmake`

`$sudo apt install swig3.0`

Then, from a Terminal go to the Micron folder and run the build script:

`$./build.sh`

The library file `libmicron.so` will be created on the `_build` folder (it is a 64 bit binary).

To run the examples, use the `run.sh` script. You must have previously built the engine.

## Documentation

See [here](./doc/documentation.md).

## TODO v0.9-beta
- [x] micron_config.h to selectively include engine features in compilation
- [x] Support for Allegro, GLFW and SDL in micron_config.h
- [x] Remove Lua support and convert Micron into a dll
- [ ] File system with pak support (object_loadmem)
- [ ] Remove billboard property from objects, and add light_lookat, object_lookat, viewer_lookat
- [ ] OpenAL audio support (wav and ogg)
- [ ] material.ambient
- [ ] Spot lights
- [ ] Lightmaps
- [ ] Pawn scripting support
- [ ] Samples
- [ ] IDE written in C++ with FLTK (or Geany support)

## TODO v1.0
- [ ] Ini file support
- [ ] PCX texture support
- [ ] Bitmap font support
- [ ] More primitives (sphere, cone, cylinder, wedge)
- [ ] Emscripten support

## TODO v1.1
- [ ] UI library (https://github.com/vurtun/nuklear)
- [ ] TinyGL or Klimt support (with fixed point math)

## TODO v2.0
- [ ] Modern pipeline support, with the ability to use custom shaders, and normal, light, emissive, specular, ambient and cubic textures.

## THINGS THAT MIGHT BE NICE TO HAVE
- [ ] Doom WAD support (including maps), so maps can be created with [Doom Builder](http://doombuilder.com/)
- [ ] Quake2 BSP and WAL texture support, so maps can be created with [TrenchBroom](http://www.kristianduske.com/trenchbroom/)
