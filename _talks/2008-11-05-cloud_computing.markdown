---
layout: talk
title: Cloud computing
meeting: /conferences/2010/02/02/LUV/
speaker: Russell Coker
begin: 2008-11-05 19:00
---
All definitions are fuzzy. Many definitions of cloud computing. See [[!wikipedia cloud_computing]].

Virtual machines

* EC2
* gogrid
* use Xen DOMU

Hosting

* Google apps
* media-temple
* Restricted environment and restricted choice of programming language.

SAAS is only for corporate use - too expensive for smaller installations.

Xen is more affordable for smaller installations, and can be powerful.

Cloud computing on demand. Only pay for it when you need it. eg. only work hours,
or only weekends.

With Amazon, can create new instance without waiting for approval from ISP.

EC2 machines often black listed due to spam problems.

Amazon default images have old software, e.g. Fedora Core 4. No Debian images.
Better to create your own image. Is it possible to share images. How do you trust
images from other users? Amazon: Look for open ports, suspicious files, etc.
This may not be reliable. Possible to update kernel to hide these things. Not possible
to list images per a given user, or GnuPG sign images. All images associated
with Amazon alias, that cannot be trusted.

Paid AMIs
