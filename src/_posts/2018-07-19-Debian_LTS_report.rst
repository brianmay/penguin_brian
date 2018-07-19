---
layout: post
title: LTS report 2018-07-01 to 2018-07-31
categories: debian_lts
begin: 2018-07-01
end: 2018-07-31
hours: 10.0
---

===================================
LTS report 2018-07-01 to 2018-07-31
===================================
This time period I used 10 hours.

LTS Infrastructure
------------------
For the project LTS Infrastructure, I used 5 hours and 20 minutes in the following tasks:

* security tracker / embedded-code-copies
* security tracker / python3

security tracker / python3
~~~~~~~~~~~~~~~~~~~~~~~~~~
* Update `PR#7 <https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/7/diffs>`_.
*  Exceptions: `PR#16 <https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/16/diffs>`_.
*  Comparisons: `PR#17 <https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/17/diffs>`_.
*  Update `PR#16 <https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/16/diffs>`_.
* Update `PR#17 <https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/17/diffs>`_.
* Print statements: `PR#18 <https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/18/diffs>`_.


Jessie Package Support
----------------------
For the project Jessie Package Support, I used 4 hours and 40 minutes in the following tasks:

* git-annex
* gpac
* sssd

git-annex
~~~~~~~~~
* Investigate patches required for CVE-2018-10857 and CVE-2018-10859.
* Send email to debian-lts:
  `git-annex / CVE-2018-10857 and CVE-2018-10859 <https://lists.debian.org/debian-lts/2018/07/msg00063.html>`_.

gpac
~~~~
* Prepare patch for CVE-2018-13005 and CVE-2018-13006.
* Send email to debian-lts:
  `gpac / CVE-2018-13005 / CVE-2018-13006 <https://lists.debian.org/debian-lts/2018/07/msg00062.html>`_.
* Build gpac version 0.5.0+svn5324~dfsg1-1+deb8u1.
* Upload gpac version 0.5.0+svn5324~dfsg1-1+deb8u1.
* Prepare DLA-1432-1
* Announce DLA-1432-1:
  `[SECURITY] [DLA-1432-1] gpac security update <https://lists.debian.org/debian-lts-announce/2018/07/msg00024.html>`_.

sssd
~~~~
* Fix for CVE-2018-10852, sudo pipe permissions.
* Send email to debian-lts:
  `sssd / CVE-2018-10852 <https://lists.debian.org/debian-lts/2018/07/msg00032.html>`_.
* Build sssd version 1.11.7-3+deb8u1.
* Upload sssd version 1.11.7-3+deb8u1.
* Prepare DLA-1429-1.
* Announce DLA-1429-1:
  `[SECURITY] [DLA-1429-1] sssd security update <https://lists.debian.org/debian-lts-announce/2018/07/msg00019.html>`_.



