---
layout: talk
title: An introduction to open source animation
conference: /conferences/2008/02/02/LCA2008/
speaker: Elizabeth Garbee
begin: 2008-01-31 16:40
---
In my spare time I use pecial and paper.

Rule #1 in animation: No rules, just lots of tools.

## Physical animation

Tools for making physical animations, paper, clay, or feathers.

* do need modelling or sculpting clay.
* camera
* must be colors that your capture device can recognize.
* if using clay, don't bake them, otherwise animation might be very
still.
* Undisturbed area for filming, somewhere you can leave, but not
have it mess up. 30 seconds, takes 4 hours; seriously consider getting
a warehouse, especially if you have pets. Plenty of light required.
* need room for camera, computer, characters, and set.
* if camera moves, the animation won't be still.

Camera

* fixed focus, better for far away images.
* variable focus, better for close up.
* use a camera that shows up as a USB device.
* stand is preferred, otherwise use lump of clay.
* program uses Video for Linux 1 drivers, not Video for Linux 2 drivers.
* Digitial camera, shoot stills. No onion paper effect.

Software

* stop motion
  * rather buggy
  * able to use jpeg of gif images, and live webcam feed
  * 640x480 VGA resolution required
  * most use friendly application
  * packaged in Debian


## Digital Animation

* GIMP
  * Familiar interface, well supported, stopmotion supported.
  * Can't create 3D images.
  * No predefined animation affects.
  * gimp animation package - GAP. onion skinning supported.
* Inkscape
  * vector based, infinitely scalable
  * grouping feature
  * easy to follow tutorials
  * cloning feature
  * potrace - bitmap --> vector.
  * large files
  * learning curve
  * smooth gradients
* Blender
  * vector based
  * 3d based tool
  * python scripting
  * steep learning curve
  * very non-standard GUI
  * 3d modelling tool
  * user interface overwealming at first
* KToon
  * good for simple animations
  * "onion paper" effect
  * Debian package is broken
* Synfig Studio
  * best program
  * "tweening" effect, use keyframes, it will fill in the rest.
  * well documented and maintained.
  * difficult GUI, but not as hard as Blender.
  * command line interface
  * time consuming
  * undo sometimes doesn't work as expected
  * not available in Debian stable (etch).
