---
layout: post
title: LTS report 2020-06-01 to 2020-06-30
begin: 2020-06-01
end: 2020-06-30
hours: 10.0
---

# LTS report 2020-06-01 to 2020-06-30

This time period I used 10 hours.

## Jessie Package Support
For the project Jessie Package Support, I used 8 hours in the following tasks:

* drupal7 package
* jquery package
* sqlite3 package
* unbound package

### drupal7 package
* Claim package.
* Send [email](https://lists.debian.org/debian-lts/2020/06/msg00047.html) to debian-lts.
* Sent [debdiff](https://lists.debian.org/debian-lts/2020/06/msg00050.html) to debian-lits mailing list.
* Reserved [DLA-2250](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/4b940bc04f25c9b239f3b9c12250dfca8c85e253).
* Send [DLA 2250-1](https://lists.debian.org/debian-lts-announce/2020/06/msg00021.html) to mailing list.
* Add [DLA-2250](https://salsa.debian.org/webmaster-team/webwml/-/merge_requests/500) to website.

### jquery package
* [Email](https://lists.debian.org/debian-lts/2020/06/msg00025.html) to debian-lts.
* Look at backporting required parsehtml function.
* [Mark](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/2e566eb8abcb548cf7020f18e4dce28aabfc5265) package as ignored in Jessie.

### sqlite3 package
* Investigate 3 security issues.
* Note I don't have access to bug reports.
* CVE-2020-13631, CVE-2020-13632, and CVE-2020-13871.

### unbound package
* Package unsupported in Stretch. Probably should be supported in
  Jessie.
* [Email](https://lists.debian.org/debian-lts/2020/06/msg00024.html) to debian-lts.
* Ask security term why support for unbound was ended.
* Followup on unsupported status.


## LTS Infrastructure
For the project LTS Infrastructure, I used 2 hours in the following tasks:

* [Improve publication process of DLAs on www.debian.org](https://salsa.debian.org/lts-team/lts-extra-tasks/-/issues/6)
* Todo list

### Todo list
* Revise various items on [todo list](https://salsa.debian.org/lts-team/lts-extra-tasks/-/issues).



