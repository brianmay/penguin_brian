---
layout: post
title: LTS report 2019-07-01 to 2019-07-31
begin: 2019-07-01
end: 2019-07-31
hours: 10.0
---

# LTS report 2019-07-01 to 2019-07-31

This time period I used 10 hours.

## Jessie Package Support
For the project Jessie Package Support, I used 10 hours in the following tasks:

* php5
* scapy
* tomcat8
* wavpack
* wpa

### php5
* [Mark bug ignore](https://salsa.debian.org/security-tracker-team/security-tracker/commit/52d782f499f0eaaa6c085809b3ecd502a53871c2);
problem with API that cannot be fixed without breaking compatabilty with apps that require the broken behaviour.

### scapy
* CVE-2019-1010142: Can't reproduce issue and can't find problem
  code either.
* Updated [security tracker](https://salsa.debian.org/security-tracker-team/security-tracker/commit/6423a849b37961d05c841e762a763cd5037e5347).

### tomcat8
* Test FTBFS error.
* Rebuild with updated certificate.
* Build still fails.
* Retry rebuild with updated certificate, but update CA certificates too.
* Build still fails.
* [Update dla-needed.txt](https://salsa.debian.org/security-tracker-team/security-tracker/commit/92039fea75020a53efd09dfb725ba982b0e8cccd).

### wavpack
* Send [email](https://lists.debian.org/debian-lts/2019/07/msg00039.html) to debian-lts.
* Mark package as no-dsa.

### wpa
* Research various open CVEs for Jessie.



