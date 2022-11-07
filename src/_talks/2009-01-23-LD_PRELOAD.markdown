---
layout: talk
title: Fun with LD_PRELOAD
conference: /conferences/2009/01/24/LCA2009/
speaker: Kevin Pulo
begin: 2009-01-23 16:00  
---
LD_PRELOAD

* environment variable
* entries containin / are treated as full path, otherwise usual LD search
applies.
* system wide basis:
  */etc/profile (overiddable) or /etc/ld.so.preload (non-overridable)
  * affects all programs - be careful!
* does not work for statically linked programs. Can be good and bad.
* effects all child processes (unless library takes care to remove itself).
* does not work for setuid/setgid unless libraries are in standard path and
  also setuid/setgid.
* can only override library functions, not system calls.
* only way to get parameters is through environment.

## Existing hacks

Filesystem - a lot of these before FUSE, often a better solution.

* flcow - FileLink Copy On Write. Break hard links on file write.
* plasticfs - <https://pasticffs.sourceforge.net/>
* installwatch

Network

* libshape 
* netjail - <https://netjail.sourceforge.net/>

Debugging and testing - force library functions to fail when they would

* failmalloc - intercepts malloc and causes it to fail.
* libeatmydata - disables fsync

Debugging and testing

* electric fence
* segv_handler - produces stack track that dumps back trace on segfault.

Graphical

* libglfps - adds framerate display to OpenGL programs.

## Writing hacks

dlfcn - Dynamic Linker FunCtioNs - use these functions to call original
library.


### sysconfcplus

sysconf(\_SC\_NPROCESSORS\_CONF)

We want a library that overrides the return value of this sysconf, and ensure
closed source process doesn't spawn to many threads on a shared system.


### xlibtrace

strace/ltrace like program for X-Windows calls. Interpret and displays libx11
specific data structures. More portable.

### xmultiwin

multiple head displays

<https://www.kev.pulo.com.au/xmultiwin/>

Currently: Redraws reflected on both windows.
