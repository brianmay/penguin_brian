---
layout: talk
title: Red Hat Enterprise Virtualisation
meeting: /conferences/2010/02/02/LUV/
speaker: Micheal Wahran
begin: 2009-05-04 19:00
---
## Hypervisors

KVM and Xen

Evolution

1. Binary translation of code. Very slow.
2. Para-Virtualisation. Guests are VM aware. Issues with Windows, Windows not VM aware and doesn't like to run in ring 0.
3. Hardware based virtualisation. e.g. KVM/VT - KVM just a loaded module.

KVM architecture

* Accepted upstream in kernel (unlike Xen).
* In kernel since 2006.

We still support Xen.

RHEL5

RHEL6

## Red Hat Enterprise Virtualisation

oVirt

KVM based system.

Page sharing COW patented?

Routing of packets to given mac address handled at silicon level, not domain 0
process.

Features:

* VM High availability.
* Can have hot spare running but paused.
* live migration
* Can specify that DNS servers must run on seperate computers.
* priorities
* Can run servers on off peak times only.
* Deploy new VMs based on templates.
* More secure then Windows with VM-Secure - SE-Linux.
* Demand computering - more CPU power if demand increases. With thresholds.
* Host based firewall (not based on IP or MAC address).
* Overnight KVM capabilities, load kvm module. Day time non-KVM bare metal
  running. Unload kvm module.
