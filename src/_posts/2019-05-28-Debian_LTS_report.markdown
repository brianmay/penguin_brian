---
layout: post
title: LTS report 2019-05-01 to 2019-05-31
categories: debian_lts
begin: 2019-05-01
end: 2019-05-31
hours: 10.0
---

# LTS report 2019-05-01 to 2019-05-31

This time period I used 10 hours.

## LTS Infrastructure
For the project LTS Infrastructure, I used 2 hours in the following tasks:

* security tracker / python3

### security tracker / python3
* Revise [PR#39](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/39/).
  Add comparison functions.
* Revise [PR#40](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/40/).
  Fix list sort for Python 3.


## Jessie Package Support
For the project Jessie Package Support, I used 8 hours in the following tasks:

* gradle
* jquery
* libvirt
* wordpress

### gradle
* Send [email](https://lists.debian.org/debian-lts/2019/05/msg00019.html) to debian-lts mailing list.
* [Mark package](https://salsa.debian.org/security-tracker-team/security-tracker/commit/f24e4c55bd37646af548c1be83891ee6d4b9e538)
  as no-DSA in Jessie.

### jquery
* Investigate CVE-2019-11358, Prototype Pollution.
* Apply patch for CVE-2019-11358 to Jessie version.
* Send [email](https://lists.debian.org/debian-lts/2019/05/msg00003.html) to
  debian-lts mailing list.
* Attempt to debug why building jquery gives 1 byte min.js file.
* Fix build problem with jquery package. Not sure how this package ever
  got built.
* Upload to Debian and prepare DLA-1777-1.
* Create [PR](https://salsa.debian.org/webmaster-team/webwml/merge_requests/132) to
  add DLA-1777-1 to website.

### libvirt
* Send [new patch](https://lists.debian.org/debian-lts/2019/04/msg00156.html) using
CVE-2016-10746 to mailing list.
* Upload libvirt 1.2.9-9+deb8u6 to Jessie.
* Reserve DLA-1772-1.
* Upload and announce [DLA-1772-1](https://lists.debian.org/debian-lts-announce/2019/04/msg00032.html)
* Create PR to add DLA to website [PR#128](https://salsa.debian.org/webmaster-team/webwml/merge_requests/128/diffs).

### wordpress
* CVE-2017-1000600: Find and add
  [references](https://salsa.debian.org/security-tracker-team/security-tracker/commit/860b8b065b44582d8dda1421d7915a8af126ca17)
  to tracker.
* CVE-2018-1000773: Attempt to find information on CVE-2018-1000773, which
  is related to CVE-2017-1000600 (incomplete fix).



