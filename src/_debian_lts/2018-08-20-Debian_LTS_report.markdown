---
layout: post
title: LTS report 2018-08-01 to 2018-08-31
begin: 2018-08-01
end: 2018-08-31
hours: 10.0
---

# LTS report 2018-08-01 to 2018-08-31

This time period I used 10 hours.

## LTS Infrastructure

For the project LTS Infrastructure, I used 1 hour and 10 minutes in the following tasks:

* security tracker / python3

### security tracker / python3

* Update [PR#17](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/17/diffs).
* Create PR for more Python 3 fixes.
* Create [PR#19](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/19/).
* Create [PR#20](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/20/).
* Create [PR#21](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/21/).
* Create [PR#22](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/22/).


## Jessie Package Support

For the project Jessie Package Support, I used 8 hours and 50 minutes in the following tasks:

* 389-ds-base
* Research security issues.
* mosquitto
* tiff
* twitter-bootstrap
* twitter-bootstrap3

### 389-ds-base

* Look at CVE-2018-10871.
* Send email to debian-lts.
  [389-ds-base / CVE-2018-10871](https://lists.debian.org/debian-lts/2018/08/msg00023.html).

### Research security issues.

* Check git-annex. No change. Patches for stretch do not apply cleanly.
* Check mosquitto. No upstream progress.
* Check sam2p CVE-2018-12578 and CVE-2018-12601. Patches do not apply
  cleanly. The patch for CVE-2018-12578 is a complete rewrite of the
  bmp_compress1_row function.

### mosquitto

* Generate patch for CVE-2017-7654.
* Send email to debian-lts.
  [Mosquitto / CVE-2017-7654](https://lists.debian.org/debian-lts/2018/08/msg00040.html).
* Investigate CVE-2017-7653.
* Send email to debian-lts.
  [Re: Mosquitto / CVE-2017-7653](https://lists.debian.org/debian-lts/2018/08/msg00050.html).

### tiff

* Look at CVE-2018-15209.
* Send email to debian-lts.
  [tiff / CVE-2018-15209](https://lists.debian.org/debian-lts/2018/08/msg00036.html).

### twitter-bootstrap

* Patch CVE-2018-14040.
* Look at CVE-2018-14041.
* Look at CVE-2018-14042.
* Send email to debian-lts.
  [twitter-bootstrap / CVE-2018-14040 / CVE-2018-14041 / CVE-2018-14042](https://lists.debian.org/debian-lts/2018/08/msg00010.html).

### twitter-bootstrap3

* Look at CVE-2018-14040.
* Look at CVE-2018-14041.
* Look at CVE-2018-14042.



