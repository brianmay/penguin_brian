---
layout: post
title: LTS report 2019-11-01 to 2019-11-30
begin: 2019-11-01
end: 2019-11-30
hours: 10.0
---

# LTS report 2019-11-01 to 2019-11-30

This time period I used 10 hours.

## Jessie Package Support
For the project Jessie Package Support, I used 5 hours and 20 minutes in the following tasks:

* 389-ds-base
* angular.js
* ansible
* ruby-openid

### 389-ds-base
* Research problem.
* Unable to get any details except brief summary of problem.
* Look for patch.
* Look for solution that was used by RHEL package version
  `389-ds-base-1.4.1.3-7.module+el8.1.0+4150+5b8c2c1f.src.rpm`
  without success.
* Look for patch in upstream git respository without success.
* Upstream [bug](https://pagure.io/freeipa/issue/8050) returns 404.

### angular.js
* CVE-2019-14863: One line fix required.
* Upstream fix: [git](https://github.com/angular/angular.js/commit/f33ce173c90736e349cf594df717ae3ee41e0f7a).
* Apply patch to Jessie version.
* Send [patch](https://lists.debian.org/debian-lts/2019/11/msg00034.html) to debian-lts.
* Upstream fix: [git](https://github.com/angular/angular.js/commit/f33ce173c90736e349cf594df717ae3ee41e0f7a).
* Apply patch to Jessie version.
* Upload fixed package.
* Post [DLA-1995-1](https://lists.debian.org/debian-lts-announce/2019/11/msg00015.html).
* Add [DLA-1995-1](https://salsa.debian.org/webmaster-team/webwml/merge_requests/282) to website.

### ansible
* CVE-2019-14846: Easy to fix.
* CVE-2019-14858: Can't find applicable code.
* CVE-2019-14864: Can't find applicable code.

### ruby-openid
* Review mailing list
[post](https://lists.debian.org/debian-lts/2019/10/msg00091.html).
Possibly regression in previous upload.
* [Respond](https://lists.debian.org/debian-lts/2019/11/msg00015.html)
to mailing list post.


## LTS Infrastructure
For the project LTS Infrastructure, I used 4 hours and 40 minutes in the following tasks:

* Automatically strip no-dsa tags by gen-DLA

### Automatically strip no-dsa tags by gen-DLA
* Post [code](https://salsa.debian.org/snippets/354).
* Post [message](https://lists.debian.org/debian-lts/2019/11/msg00047.html) to Debian-LTS.
* Respond to private email from member of security team.



