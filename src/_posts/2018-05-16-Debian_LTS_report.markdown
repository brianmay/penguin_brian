---
layout: post
title: LTS report 2018-05-01 to 2018-05-31
categories: debian_lts
begin: 2018-05-01
end: 2018-05-31
hours: 10.0
---

# LTS report 2018-05-01 to 2018-05-31

This time period I used 10 hours.

## Wheezy Package Support

For the project Wheezy Package Support, I used 10 hours in the following tasks:

* cacti
* calibre
* efail
* firebird2.5
* glusterfs
* libspring-java

### cacti

* Research security issues for CVE-2018-10061 and CVE-2018-10061.
* 10 upstream patches (that I can see).
* Marked issues no-dsa in wheezy.

### calibre

* Sent response to previous email.
  [Unclear if calibre security fix has any significant benefits](https://lists.debian.org/debian-lts/2018/04/msg00054.html).
* Research security issues for CVE-2018-10061 and CVE-2018-10061.
* 10 upstream patches (that I can see).
* Sent email to debian security team.
* [Mark CVE-2018-7889 as no-dsa in wheezy](https://salsa.debian.org/security-tracker-team/security-tracker/commit/ef2f8d10c6b656f307e6331a5e9767f4183824dc).

### efail

* Investigate CVE-2017-17689 efail security issues with encrypted
  emails.

### firebird2.5

* Backport fix from 3.0.3.32900.ds4-3 for CVE-2017-11509.
* Test backported fix.
* Build and upload for testing.
* Push git changes.
* Announce [firefird2.5 2.5.2.26540.ds4-1~deb7u4](https://people.debian.org/~bam/debian/pool/main/f/firebird2.5/)
  package available for testing.
* Build package for release.
* Upload to Debian and create advisory notice.

### glusterfs

* Research security vulnerability CVE-2018-1088.

### libspring-java

* Research CVE-2018-1272, CVE-2018-1272 and CVE-2018-1275.
