---
layout: talk
title: Autocluster
meeting: /conferences/2009/01/24/LCA2009/
speaker: Martin Schweke &amp; Andrew Tridgell
begin: 2009-01-23 10:40  
---
Shell scripts.

Scalable NAS boxes. petabytes and beyond.

* Built on RHEL5.
* Clustered version of Samba.
* Built on CTDB.
* template based. Customizable.

Testing

* hard to test clustering.
* never enought hardware.
* Hard to reproduce test case. Timing issues, etc.
* Bit rot. Setup becomes obsolete.
* Customers become you testers. Ok if it works, not ok if test fails.

Virtual clusters?

* not good for performance testing.
* bit rot still an issue.
* sTill a major pain to setup.
* take a lot of diskspace.

Disposable clusters

* create a new cluster instantly
* create a cluster for each bug
* avoid update problems
* minimize disk usage
* test effectively on a laptop

Solution: Bash

Uses KVM.

Steps:

1. Create base image. No configuration, just base install.  KVM has bug, we
don't trust it not to write to image file even when set as read only. Set
immutable bit to ensure no changes are written.
2. Read XML config file for each cluster.
3. Create node specifc image files using qcow2 sparse files.

KVM doesn't provide unique SCSI id for each disk. Required for multipath
support. Same hard disk needs to have same id even if from different path.
Replace scsi id command with our own.

## Problems

Timing bugs. Do not sleep. Instead monitor status changes.

KVM issus. Curruption (disable write cache?), etc.

    git clone git://git.samba.org/tridge/autocluster.git autocluster


## Future

Support other distributions. Debian?

Like puppet. More targetted. Relies on having filesystem images. Wouldn't
normally have file system images.
