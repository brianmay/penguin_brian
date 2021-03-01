---
layout: post
title: LTS report 2021-02-01 to 2021-02-28
begin: 2021-02-01
end: 2021-02-28
hours: 10.0
---

# LTS report 2021-02-01 to 2021-02-28

This time period I used 10 hours.

## Stretch Package Support
For the project Stretch Package Support, I used 10 hours in the following tasks:

* golang-go.crypto package
* openjpeg2 package
* Discuss Stretch LTS policy
* pysaml2 package

### golang-go.crypto package
* Reserved [DLA-2527-1](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/17c1f2b550eb4e91ddea88edaab75c55f2d5ecd5).
* Send [DLA-2527-1](https://lists.debian.org/debian-lts-announce/2021/01/msg00015.html) to mailing list.
* Add [DLA-2527-1](https://salsa.debian.org/webmaster-team/webwml/-/merge_requests/640) to website.

### openjpeg2 package
* Created security patches.
* Sent [email](https://lists.debian.org/debian-lts/2021/02/msg00013.html) to debian-lts.
* Recheck patches.
* Reserved [DLA-2550-1](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/d4b14995665cb202074c6fab5a94825ab8db1c3a).
* Send [DLA-2550-1](https://lists.debian.org/debian-lts-announce/2021/01/msg00015.html) to mailing list.
* Add [DLA-2550-1](https://salsa.debian.org/webmaster-team/webwml/-/merge_requests/648) to website.

### Discuss Stretch LTS policy
* Sent [email](https://lists.debian.org/debian-lts/2021/02/msg00035.html) to debian-lts.

### pysaml2 package
* Enabled tests from CVE-2020-5390.patch that were previously disabled. No errors.
* Applied patch for CVE-CVE-2021-21238. Works fine.
* Applied tests from patch for CVE-CVE-2021-21239. Note that tests pass.
* Sent findings to Abhijith PA who has claimed package.



