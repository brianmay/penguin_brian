---
layout: talk
title: Implementing an OptIPortal
meeting: /conferences/2009/01/24/LCA2009/
speaker: Chris Willing
begin: 2009-01-21 17:00
---
QCIF (QPAC name already taken)

Access Grid

* video conferencing
* sharing of applications
  * shared web browser
  * shared open office
  * remote sensing
* screen gets cluttered very quickly
* lack of screen real estate
  * use more then one screen per site
  * even this may be insufficient

Scaling images down in size may remove details that may be important for
some applications. e.g. medical.

OptIPortal

* OptIPuter = Internet Protocol + Optical network
* eg. 7x5 30" LCD screens.

## Simple tiled display

Limitation:

* number of outputs per graphics cards
* number of graphics cards you can fit in
* may need to mix different bus types

Solution:

* Use output from multiple machines. Cluster type display


## Cluster tiled display

multiple adjacent machines from multiple computers

Rocks distribution

* great installation program. Builds network for you.
* Intended for CPU clusters, not display clusters
* Based on CentOS.
* Slow release schedule
* Don't recommend doing regular updates.
* No security updates.
* Doesn't support more then one graphics card per machine.
* Network model not ideal for shared graphics, as machines are on private
network.
* multicast only available on private network.

Front end machine

* does all the controlling
* connects to private switch for driving displays
* another network connection to LAN
* display machines connected to private LAN

## Graphics systems

DMX

* Distributed Multihead X
* Runs applications normally
* Some limitations of accelerated graphics
* Limit to number of nodes. Not scalable.

SAGE

* Scalable Adaptive Graphics Environment (EVIL)
* streams pixels
* put RGB values into buffer
* SAGE spreads out to machines as required
* size of buffer, number of machines, number of videos - bandwidth may be a problem
* Can move video between sites (good)
* Configuration by hand. Still in development.
* Configuation automated in Rocks 5)
* Not really suitable.

CGLX

* Clustered GLX (CGLX)
* Only distributed as a binary RPM for Rocks.

## Our solution

Put all computers on LAN

4K = new video format = 4 * HD

SC08 - network only up and running with 4K support on last day (Friday).
