---
layout: post
title: LTS report 2020-12-01 to 2020-12-31
begin: 2020-12-01
end: 2020-12-31
hours: 10.0
---

# LTS report 2020-12-01 to 2020-12-31

This time period I used 10 hours.

## Stretch Package Support
For the project Stretch Package Support, I used 10 hours in the following tasks:

* golang-github-dgrijalva-jwt-go package
* golang-go.crypto package
* golang-golang-x-net-dev package

### golang-github-dgrijalva-jwt-go package
* Attempt to patch, but find that there is no vulnerable code present.
* Send [email](https://lists.debian.org/debian-lts/2020/11/msg00068.html) to debian-lts.
* Isolate first version vulnerable code was present.
* Send [email](https://lists.debian.org/debian-lts/2020/12/msg00004.html) to debian-lts.
* Isolate first version vulnerable code was present.
* Send [email](https://lists.debian.org/debian-lts/2020/12/msg00004.html) to debian-lts.

### golang-go.crypto package
* rclone
  * Reserved [DLA-2454-1](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/febaf600bb995802f4950f7b8fdd578dd33508fa).
  * Send [DLA-2454-1](https://lists.debian.org/debian-lts-announce/2020/11/msg00030.html) to mailing list.
  * Add [DLA-2454-1](https://salsa.debian.org/webmaster-team/webwml/-/merge_requests/578) to website.

* packer
  * Reserved [DLA-2455-1](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/febaf600bb995802f4950f7b8fdd578dd33508fa).
  * Send [DLA-2455-1](https://lists.debian.org/debian-lts-announce/2020/11/msg00031.html) to mailing list.
  * Add [DLA-2455-1](https://salsa.debian.org/webmaster-team/webwml/-/merge_requests/579) to website.

### golang-golang-x-net-dev package
* Backport patch for CVE-2019-9512 and CVE-2019-9514.
* [Claim](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/77291e9ff8a5019eb4ea4cc26442814fb763d320) package.
* Send [email](https://lists.debian.org/debian-lts/2020/12/msg00026.html) to debian-lts.
* Reserved [DLA-2485-1](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/f90c3c07f5613a433b4067389c727fb475f218bf).
* Send [DLA-2485-1](https://lists.debian.org/debian-lts-announce/2020/12/msg00011.html) to mailing list.
* Add [DLA-2485-1](https://salsa.debian.org/webmaster-team/webwml/-/merge_requests/595) to website.



