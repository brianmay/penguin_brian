---
layout: post
title: Secure Gateways
date: 2008-08-29 14:16:38 +1000
tags: security Linux
---

For any connection to the Internet, ideally you want to keep things as separate
as possible. For example, web servers should not exist on your internal network,
because this means anybody who breaks into the web server can access your
internal network. You shouldn't put it on your firewall either, because not a
potential attacker could get access to everything.

The solution is to put the web server on its own, physically separate network,
that has its own network connection to the firewall. This way you can add rules
to restrict connections from the web server to the internal network, so even if
the web server is compromised, an attacker cannot get to your internal network.
Obviously the firewall must be kept secure, this means it should not run
anything except the bare essentials. This is also known as a
[DMZ](https://en.wikipedia.org/wiki/Demilitarized_zone_%28computing%29).

Unfortunately, this approach, while secure, has traditionally been rather
expensive, due to the large number of computers required. On my network I would
have:

* Firewall
* Samba file server
* Asterisk server
* Web server
* Squid
* Mail server

All of these functions should be separate, in order to minimise damage if one
part is compromised, but that is 6 computers, that must be purchased, located,
and provided with power.

What if there was a cheaper and easier way to do this?

There is: [Xen Virtual Hosts](https://wiki.microcomaustralia.com.au/Brian/Xen_virtual_hosts/).

## Conclusion

With virtualisation software, it is possible to produce a reasonable gateway
with only one computer, and still have a firewall protecting the various
applications from each other.
