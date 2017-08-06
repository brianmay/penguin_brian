---
layout: talk
title: An updated directory structure for Unix
conference: /conferences/2010/01/23/LCA2010/
speaker: Michael Homer
begin: 2010-01-22 15:45
---
Original Unix file structure was designed for large Unix sites. Minimal rescue
mode system on /. Now we have live CDs that can be used to repair a broken
system.

Root NFS mount is still a good reason, sometimes no required, but can help.

Now we have union mounts, as many applications can be mounted in the same
place. Not every system has to be identical.

Separate /bin and /sbin directories. No need to separate these. There is a
permission system. Many programs in /sbin are very valid as standard users.
A lot of decisions here are based on ill-defined historic reasons.

Advantages

* Manipulability. Can find out what package and version file came from using ls. Can remove program with rm.
* Parallelism. Can have multiple versions of software installed at once. Can switch between them.
* Unpackaged software. Install programs yourself. Can remove it cleanly. Can switch versions.
* Flexible.

Tools

* DisableProgram
* RemoveProgram
* SymlinkProgram
* Compile
* InstallPackage
* DetachProgram and AttachProgram

<http://www.gobolinux.org/>

<http://blog.gobolinux.org/>
