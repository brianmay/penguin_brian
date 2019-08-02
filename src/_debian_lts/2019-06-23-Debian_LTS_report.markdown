---
layout: post
title: LTS report 2019-06-01 to 2019-06-30
begin: 2019-06-01
end: 2019-06-30
hours: 10.0
---

# LTS report 2019-06-01 to 2019-06-30

This time period I used 10 hours.

## Buster Package Support
For the project Buster Package Support, I used 2 hours and 10 minutes in the following tasks:

* heimdal

### heimdal
* Patch CVE-2018-16860 and CVE-2019-12098.
* Experiment with patch to disable tests, to fix FTBFS #923930.
* Attempt to work out if glibc in Debian has support for 64bit time_t
  values. Answer: not yet, should be in next Debian release after Buster.
* Patch with new certificates with pre-2038 expiry, fixes #923930.
* Upload to Debian unstable.
* Create unblocker request for buster.


## LTS Infrastructure
For the project LTS Infrastructure, I used 1 hour in the following tasks:

* security tracker / python3

### security tracker / python3
* Update pending pull requests.


## Jessie Package Support
For the project Jessie Package Support, I used 6 hours in the following tasks:

* heimdal
* jquery
* libqb
* wordpress

### heimdal
* Patch CVE-2018-16860 and CVE-2019-12098.
* Update certificates from sid version to fix FTBFS.
* Package FTBFS.
* Re-apply fix for CVE-2017-6594 which got lost somewhere.
* Build fails.
* Sent [email](https://lists.debian.org/debian-lts/2019/05/msg00110.html) to debian-lts.

### jquery
* Upload was broken, see [#928827](http://bugs.debian.org/928827).
* Upload fixed version to Debian and prepare DLA-1777-2.
* Create [pull request](https://salsa.debian.org/webmaster-team/webwml/merge_requests/141/diffs) for website.

### libqb
* Try to investigate if vulnerable or not.
* Sent [email](https://lists.debian.org/debian-lts/2019/06/msg00015.html) to debian-lts.

### wordpress
* Read exploit pdf file in detail.


## Stretch Package Support
For the project Stretch Package Support, I used 50 minutes in the following tasks:

* heimdal

### heimdal
* Patch CVE-2018-16860 and CVE-2019-12098.
* Update certificates from sid version to fix FTBFS.



