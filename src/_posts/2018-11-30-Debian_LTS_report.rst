---
layout: post
title: LTS report 2018-11-01 to 2018-11-30
categories: debian_lts
begin: 2018-11-01
end: 2018-11-30
hours: 10.0
---

===================================
LTS report 2018-11-01 to 2018-11-30
===================================
This time period I used 10 hours.

LTS Infrastructure
------------------
For the project LTS Infrastructure, I used 3 hours in the following tasks:

* security tracker / python3

security tracker / python3
~~~~~~~~~~~~~~~~~~~~~~~~~~
* Look at stale pull requests.
* Fix merge conflicts in `PR#21 <https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/21/>`_.
* Debug tests in `PR#21 <https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/21/>`_.
* Attempt to fix broken tests on master.
* Create `PR#25 <https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/25/>`_.


Jessie Package Support
----------------------
For the project Jessie Package Support, I used 7 hours in the following tasks:

* tiff

tiff
~~~~
* Patch CVE-2018-18661
* Test patch CVE-2018-18661
* Send email to debian-lts.
  `tiff / CVE-2018-18661 <https://lists.debian.org/debian-lts/2018/11/msg00033.html>`_.
* Retest tiff under gdb and followup mailing list post.
* Continue trying to reproduce tiff CVE-2018-18661 security issue.
* Reproduce CVE-2018-19210 on Jessie and Stretch.
* Continue investigating CVE-2018-18661.



