---
layout: post
title: LTS report 2019-10-01 to 2019-10-31
begin: 2019-10-01
end: 2019-10-31
hours: 10.0
---

# LTS report 2019-10-01 to 2019-10-31

This time period I used 10 hours.

## Jessie Package Support
For the project Jessie Package Support, I used 10 hours in the following tasks:

* golang
* poppler
* ruby-mini-magick
* ruby-openid

### golang
* Research issue.
* Patch doesn't apply automatically but could be applied by hand easily.
* Patching tests might be harder. If actually required.
* [Mark CVE-2019-16276 as ignored](https://salsa.debian.org/security-tracker-team/security-tracker/commit/eb723cff6b1019b2780bf69f62d4a7243b6b0a31),
  as already ignored in Stretch.

### poppler
* CVE-2019-9959
* Create and test patch.
* Send [email](https://lists.debian.org/debian-lts/2019/10/msg00074.html)
  to debian-lts mailing list.
* Investigate CVE-2019-10871.
* Update patch to set SPLASH_CMYK to solve CVE-2019-10871.
* Upload fixed version 0.26.5-2+deb8u12 to jessie-security.
* Post [DLA-1963-1](https://lists.debian.org/debian-lts-announce/2019/10/msg00024.html).
* Add [DLA-1963-1](https://salsa.debian.org/webmaster-team/webwml/merge_requests/253) to website.
* Upload caused [regression](https://bugs.debian.org/942503) in xpdf.
* Test and reproduce error.
* Upload version 0.26.5-2+deb8u13 with fix for CVE-2019-10871 reversed.
* Post [DLA-1963-2](https://lists.debian.org/debian-lts-announce/2019/10/msg00024.html).
* Add [DLA-1963-2](https://salsa.debian.org/webmaster-team/webwml/merge_requests/261) to website.

### ruby-mini-magick
* Further debugging of problem.

### ruby-openid
* Create patch and post
[email](https://lists.debian.org/debian-lts/2019/10/msg00045.html) to LTS
mailing list.
* Upload fixed version 2.5.0debian-1+deb8u1.
* Reserve DLA-1956-1.
* Post [DLA-1956-1](https://lists.debian.org/debian-lts-announce/2019/10/msg00014.html).
* Add [DLA-1956-1](https://salsa.debian.org/webmaster-team/webwml/merge_requests/253) to website.



