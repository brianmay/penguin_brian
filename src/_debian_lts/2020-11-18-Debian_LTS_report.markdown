---
layout: post
title: LTS report 2020-11-01 to 2020-11-30
begin: 2020-11-01
end: 2020-11-30
hours: 10.0
---

# LTS report 2020-11-01 to 2020-11-30

This time period I used 10 hours.

## Stretch Package Support
For the project Stretch Package Support, I used 10 hours in the following tasks:

* golang-go.crypto package

### golang-go.crypto package
* Produce list of packages that need to be rebuilt
* obfs4proxy, packer, rclone, restic, snapd
* Send [email](https://lists.debian.org/debian-lts/2020/11/msg00010.html) to debian-lts.
* Rebuild obfs4proxy, rclone, snapd.
* [Claim packages](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/b75dff7924271bb99ad118c8698855dcc0fe677e)
  that need rebuilding due to CVE-2019-11840.

* obfs4proxy:
  * Reserved [DLA-2442-1](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/df25f635e85b86a61736c5065766edf0fc984cee).
  * Send [DLA-2442-1](https://lists.debian.org/debian-lts-announce/2020/11/msg00016.html) to mailing list.
  * Add [DLA-2442-1](https://salsa.debian.org/webmaster-team/webwml/-/merge_requests/575) to website.

* rclone:
  * Reserved [DLA-2443-1](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/ed6f576768c3bae275adbbe8f95003cff174ef46).
  * Upload failed.
  * [Revert](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/8fd1ee862a2a62be4421687256fd67ff59c38dda) reservation.
  * Send [email](https://lists.debian.org/debian-lts/2020/11/msg00022.html) to debian-lts.
* Created [Bug#974164](https://bugs.debian.org/974164) on incorrect distribution with `dch --lts`.
* Noted that snapd will have excactly the same problem as rclone with the Built-Using header.
* Created [Bug#974877](https://bugs.debian.org/974877) on unable to upload to stretch-security.
* Test rebuild of rclone, snapd, packer and restic.
* [Update](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/1e90c1bc16d9bcc60968c09cec47b829734d400e)
claimed packages.
* restic
  * Reserved [DLA-2453-1](https://salsa.debian.org/security-tracker-team/security-tracker/-/commit/290be74606ed6fe88e581315ff5426d84a5c98f6).
  * Send [DLA-2453-1](https://lists.debian.org/debian-lts-announce/2020/11/msg00027.html) to mailing list.
  * Add [DLA-2453-1](https://salsa.debian.org/webmaster-team/webwml/-/merge_requests/577) to website.
* packer
  * Attempt to upload.
  * Created [Bug#974877](https://bugs.debian.org/974877) on unable to upload to stretch-security.
* Created [Bug#975011](https://bugs.debian.org/975011) on unable to upload to stretch-security.



