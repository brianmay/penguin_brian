---
layout: talk
title: Writing an x86 hypervisor
meeting: /conferences/2007/01/20/LCA2007/
speaker: Zachary Amsden; Jeremy Fitzhardinge; Rusty Russell, IBM; Chris Wright, Redhat
begin: 2007-01-19 14:00
---
All the cool kids are doing it!

Zachary Amsden  
Jeremy Fitzhardinge  
Rusty Russell, IBM  
Chris Wright, Redhat

Shadow page tables

* twice as much memory
* two copies page tables
* changes by guest erquire trapping hypervisor

or alternative:

* security
* I/O - emulate
* create simplified drivers

cupid

* identify CPU features
* not trappable
* not a privileged instruction

popf, pushf

* kernel can't run except in ring 0

puppies

Paravirtualization

* rewrite code in kernel not to use problem instructions
* Xen

Xen interrupts

* GPL hypervisor
* IDT interrupt descriptor table
* virtual IRQs

VMI

* cute cuddly lawyer
* one kernel can run anywhere
* different OS run on different hypervisors without making code changes
* published by hypervisor
* called by kernel

<http://sf.net/projects/vmi-linux>

lhype

lguest - rusty visor

virtbench - VT

KVM hypervisor

can you run a hypervisor under a hypervisor?

standard video card, etC?

we should fix the OS, but it isn't as cool.
