---
layout: talk
title: Securing the execution environment for Net-BSD
conference: /conferences/2004/01/17/LCA2004/
speaker: Bret Lynn
begin: 2004-01-15 12:00
---
Use Linux only for playing games

Net-BSD == Darkside

Signed Exec AUUG2K

Signed exec only worked with statically linked binaries

Exec path modified

* MD5 hash of disk binary
* compare calculate hash against list loaded into kernel memory
* allow exec if hashed match
* execution speed halved
* cached comparison result for greater speed

developments

* shared libraries
* other hash methods
* now in Net-BSD current kernel source
* name changed to Verified Exec
* nothing signed, just verified

discussion occurred

* verifying executables on untested media, such as NFS and SAN
* "the most vocal people are the ones who think your code is a pile of poo"
* NFS/SAN not in design spec
* In tree code assumes underlying media can be trusted, because of caching

untrusted media

* the kernel assumes that it has total control over everything
* trojan-proof, interesting, much like initial thoughts of verified exec (???)
  * handles untrusted media by checking it every time
  * sendmail from NFS, the check only happens at startup
  * if binary overwritten, and pages forced out of virtual memory, page is loaded from changed binary
  * demonstration code exists to exploit this
* verify pages as they are loaded
  * need to track fingerprint of every single page
* [ prevent changes to executable file, require replacement instead??? No, need to trust file server ]
* Need to modify pager code
  * when pager loads page from storage, the fingerprint is evaluated,
  * if no match, horrible death

Implications

* no need to trust binaries on system
* don't need to have control over the server
* files can be served from anywhere
* [ can kernel be replaced? ]
* [ can data files be tampered with to cause a security compromise? ]
* [ where is the verification data stored? ]
* kernel level trip wire
* ptrace????
* /dev/mem and /dev/kmem??? turned off with secure level setting
  * =2 cannot open /dev/mem, can't open raw disk device, etc
  * increased => cannot change fingerprints
* PIC in libraries, no rewriting required
* upgrades to software?
  * go into single user mode
  * firewalls, routers, other stable systems
  * not for development systems
  * not useful for 24/7 systems??? Use multiple systems
