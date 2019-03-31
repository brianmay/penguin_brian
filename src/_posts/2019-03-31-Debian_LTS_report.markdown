---
layout: post
title: LTS report 2019-03-01 to 2019-03-31
categories: debian_lts
begin: 2019-03-01
end: 2019-03-31
hours: 10.0
---

# LTS report 2019-03-01 to 2019-03-31

This time period I used 10 hours.

## LTS Infrastructure
For the project LTS Infrastructure, I used 3 hours and 30 minutes in the following tasks:

* security tracker / python3

### security tracker / python3
* Create [PR#33](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/33/).
  Replace ``file()`` with ``open()``.
* Create [PR#34](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/34/).
  Update to urllib3.
* Create [PR#35](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/35/).
  `list(obj.keys())`
* Create [PR#36](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/36/).
  Fix indent.
* Create [PR#38](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/38/).
  Replace cPickle with pickle.
* Create [PR#39](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/39/).
  Add comparison functions.
* Create [PR#40](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/40/).
  Fix list sort for Python 3.


## Jessie Package Support
For the project Jessie Package Support, I used 6 hours and 30 minutes in the following tasks:

* ikiwiki
* ikiwki
* rdflib

### ikiwiki
* Upload to Debian.
* Prepare DLA-1716-1

### ikiwki
* Prepare patch.
* Post patch to mailing list: [ikiwiki / CVE-2019-9187](https://lists.debian.org/debian-lts/2019/03/msg00035.html).

### rdflib
* Post bug report [#923979](http://bugs.debian.org/923979) concerning missing dependancy.
* Post patch to mailing list: [rdflib / CVE-2019-7653](https://lists.debian.org/debian-lts/2019/03/msg00036.html).
* Upload to Debian.
* Prepare DLA-1717-1



