---
layout: talk
title: Linux and Simulation
meeting: /conferences/2004/01/17/LCA2004/
speaker: Dad Shearer
begin: 2004-01-17 16:25
---
LCA2004, one of best talks, 2004-01-17 4:25

Intention

* Simulation here and now technology
* E-Mail computer, good computer, probably simulated

Why simulation?

* niche technology:
  * slow, expensive, difficult
  * niche affair
  * VMware, 99% customers windows on windows
  * networks simpler
  * TCO less important
  * TCO == total cost ownership
* testing is more important
  * often not done or not done enough
* emerging properties
  * weird protocols that cut through firewalls
* hardware that is very capable
  * hardware offloads load from CPU, leaving CPU free
* simulation allows doing new different things
* software obsolescence is slowing
* hardware obsolescence is steady
* network obsolescence exists
* simulation can delay drop off
* use magic, simulation environment, to stretch out the lifetime of component

Linux for simulation

* open source simulators
  * QEMU, Bochs, Hercules (S390), ...
* closed source simulators
  * VMware, Simics, ...
  * Simics can stretch time frame, i.e. very fast computer
* network simulators
  * Simured, NS2, ,,
* Linux can simulate itself
  * Zxem
  * Vserve, not really
    * Vserve make chroot available
    * run away process will bring down everyones machine
  * UML - user-mode-linux
* practical simulation: uCLinux
  * palm pilot simulator
  * synthetic, accurate, 1 architecture, target speed, 2 pieces to email
  * multi CPU not supported
  * email hardware works
  * enable easier to reproduce faults by different people
* Bochs
  * doesn't do PCI bus mastering
  * synthetic, not accurate, hotchpotch architecture, -100 times slower, 4 pieces to email
  * email: disk image 10Meg-64Meg-, BIOS, VGA BIOS, Simulator
* UML
  * not synthetic, accurate, hotchpotch architecture, 0.75x times target speed, 2 pieces to email
  * email: image, {kernel config,kernel}
  * kernel source code
  * port to IA64 pending????
  * good speed
  * latest patches 85% or better efficiency
  * software suspend now supported
  * Knopix will use swap by default without asking
* Hercules
  * one of the best open source free platform simulators that exists
  * synthetic, accurate, 3 architectures (at least) S370/S390/Z series, 90 times slower, 2 pieces to email
  * OS360
  * 64 bit laptop
  * test code on 64 bit architecture with z series emulation
  * Allan Cox Talk: "Space Invaders stole my Mouse"
  * email: disk image, 
  * chapter removed from manual on Hercules by IBM
  * simulate 3 pin serial line for console
  * never trust a computer you can lift

Testing Exim

* email computer
* encapsulate nasty hacks, transport via E-Mail
* multiple Exims
* use single UML instance
  * multiple Exims
  * SMTP client/server testers
  * DNS with different zones
  * 40Meg image
* use nested UML and nested UML images
  * each computer has an image
  * outer UML with iptables
  * multiple inner UMLs
  * rate limit with iptables at top level
  * 100Meg compressed (estimated)

Demonstrations

* Hercules
  * OS/2 is used to display status screen for mainframes(?)
  * login: _root
  * password: root
  * test portability and reliability

Worked Examples

Challenge your thinking
