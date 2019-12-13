---
layout: post
title: LTS report 2019-12-01 to 2019-12-31
begin: 2019-12-01
end: 2019-12-31
hours: 10.0
---

# LTS report 2019-12-01 to 2019-12-31

This time period I used 10 hours.

## Jessie Package Support
For the project Jessie Package Support, I used 4 hours and 40 minutes in the following tasks:

* ibus

### ibus
* Requires patch to glibc avoid a regression.
* Attempt to patch glibc.
* gio not found in glibc.
* Posted [email](https://lists.debian.org/debian-lts/2019/12/msg00039.html) to debian-lts.
* Attempt to patch glib.
* Attempt to deal with merge conflicts.
* Version in Jessie doesn't have `gio/tests/meson.build` for tests.
* Run tests.
* Push changes git [remote reposistory](https://gitlab.gnome.org/penguin_brian/glib/compare/2.42.1...fix_gio_auth).


## LTS Infrastructure
For the project LTS Infrastructure, I used 5 hours and 20 minutes in the following tasks:

* Fix links to regression DLAs
* Security Tracker
* Split CVE todo list

### Fix links to regression DLAs
* See [Bug#922246](https://bugs.debian.org/922246).
* Create [PR](https://salsa.debian.org/webmaster-team/webwml/merge_requests/298).
* Work on fixing links from security tracker to archives for regression DLAs.
* Create [PR](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/49).

### Security Tracker
* Review pending merge requests.
* Update [#36](https://salsa.debian.org/security-tracker-team/security-tracker/merge_requests/36).

### Split CVE todo list
* Review task list at [#1](https://salsa.debian.org/security-tracker-team/security-tracker-service/issues/1).



