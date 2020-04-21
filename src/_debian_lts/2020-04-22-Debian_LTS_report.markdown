---
layout: post
title: LTS report 2020-04-01 to 2020-04-30
begin: 2020-04-01
end: 2020-04-30
hours: 10.0
---

# LTS report 2020-04-01 to 2020-04-30

This time period I used 10 hours.

## Jessie Package Support
For the project Jessie Package Support, I used 10 hours in the following tasks:

* bluez
* lua-cgi
* ruby-rack
* varnish
* xcftools

### bluez
* Investiagate CVE-2020-0556.
* New version has accept field in btd_profile that references
  the hog_accept function, which is patched. None of this exists
  in the old Jessie version.

### lua-cgi
* [Mark package](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/ce8d060f5fcc344889020a797a665b911b62ccf4)
  as not affected due to bug #954300.

### ruby-rack
* Create [bug report](https://code.djangoproject.com/ticket/31412) against Django.
* Attempt to patch CVE-2019-5086.
* Send [email](https://lists.debian.org/debian-lts/2020/04/msg00012.html) to debian-lts mailing list.
* Send [email](https://www.openwall.com/lists/oss-security/2020/04/08/1) to oss-security mailing list.

### varnish
* Investigate CVE-2019-20637.
* Suspect package in Jessie not vulnerable as
  `cnt_recv()` specifically deals with case where req->err_code
  is set.
* Can't be 100% sure of this.

### xcftools
* Research CVE-2019-5086 and CVE-2019-5087.
* Investigate proposed solution for CVE-2019-5086.
* Added findings to [upstream bug report](https://github.com/j-jorge/xcftools/issues/12).



