---
layout: talk
title: Shipping Software Responsibly
conference: /conferences/2017/08/03/PyConAu2017/
speaker: 
begin: 2017-08-04 17:30
---

Shipping Software Responsibly
=============================
IOT == things that run an OS.

Code by itself has no value. Code needs to be in the hands of the users.

At some point you will ship insecure software.

Security updates.

Wannacry. Many people fell victim weeks after Microsoft released patch.

Organisation managing thousands of computers. Needs to pay somebody to make
sure all computers are kept up-to-date.

This update model that requires somebody to push a button on IOT devices
to keep them up-to-date if not going to work.

Goals:

* Secure by default. Should always be up-to-date without manual user processes.
* Easy to adopt. No special requirements.
* Also applies to Desktop, Servers, Clouds, etc.

Snap packages:

* Immutable file system.
* FAT packages. Package all dependencies.
* Automatically installed and updated.
