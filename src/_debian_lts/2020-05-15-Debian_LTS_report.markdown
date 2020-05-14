---
layout: post
title: LTS report 2020-05-01 to 2020-05-31
begin: 2020-05-01
end: 2020-05-31
hours: 10.0
---

# LTS report 2020-05-01 to 2020-05-31

This time period I used 10 hours.

## Jessie Package Support
For the project Jessie Package Support, I used 8 hours in the following tasks:

* ansible
* bluez
* keybase
* mumble
* nginx
* tomcat8

### ansible
* Upstream fix said to be reverted, but I can't find commit that reverts it.
* Posted [message](https://github.com/ansible/ansible/issues/67794#issuecomment-624916619) to
  upstream bug report.
* Posted [message](https://github.com/ansible/ansible/issues/67794#issuecomment-625506301) to
  upstream bug report.
* Updated details in [dla-needed.txt](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/30d7d0ff2ca51867e1917a180573e6597f940118).

### bluez
* Post [email](https://lists.debian.org/debian-lts/2020/05/msg00030.html) describing the problems applying the
  upstream patch.
* Post [email](https://lists.debian.org/debian-lts/2020/05/msg00038.html).
* [Update](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/42382c38102044d17b6ad1819f59d490b95d7c94)
  dla-needed.txt entry for bluez.

### keybase
* Clarify if support is still required or not for Jessie. See [email](https://lists.debian.org/debian-lts/2020/05/msg00011.html).

### mumble
* Try building package with C++11.
* Failed, Jessie package doesn't have C++11 support.
* Sent [email](https://lists.debian.org/debian-lts/2020/05/msg00007.html) to debian-lts mailing list.

### nginx
* Clarify meaning of "invasible" in `dla-needed.txt`. See [email](https://lists.debian.org/debian-lts/2020/05/msg00012.html).

### tomcat8
* Investigate 3 CVEs. All of them appear to be minor issues only.


## LTS Infrastructure
For the project LTS Infrastructure, I used 2 hours in the following tasks:

* Security Tracker
* Todo list

### Security Tracker
* Review and update pending merge requests.

### Todo list
* Revise various items on [todo list](https://wiki.debian.org/LTS/TODO).
* Send [email](https://lists.debian.org/debian-lts/2020/05/msg00040.html).



