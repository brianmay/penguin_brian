---
layout: post
title: LTS report 2018-04-01 to 2018-04-30
categories: debian_lts
begin: 2018-04-01
end: 2018-04-30
hours: 10.0
---

===================================
LTS report 2018-04-01 to 2018-04-30
===================================
This time period I used 10 hours.

Wheezy Package Support
----------------------
For the project Wheezy Package Support, I used 10 hours in the following tasks:

* calibre
* ldap-account-manager
* patch
* python-crypto
* python-django
* rubygems

calibre
~~~~~~~
* Research 2018-7889.
* This is not security issue in itself, but could be used to trick
  users into importing data from untrusted sources.
* Upstream fix is to replace pickle format for exported book with json.
* See the `calibre thread <https://lists.debian.org/debian-lts/2018/04/msg00041.html>`_.
* metadata.db is a seperate issue that is not covered by 2018-7889.
* Followup on previous email.
* Followup on previous email.
* Consider moving package to not-supported list.
* Manually apply patch for CVE-2018-7889.
* Attempt to test patch for CVE-2018-7889.

ldap-account-manager
~~~~~~~~~~~~~~~~~~~~
* Research security vulnerabilities.
* Prepare patched version for CVE-2018-8763.
* Review CVE-2018-8764, no patch required.
* Check get_rdn function for possible simplification.
* Check patch for completeness and find this may not be the case.
* Build and upload version for testing.
* Submit `upstream bug report <https://sourceforge.net/p/lam/bugs/196/>`_
  on incomplete fix for CVE-2018-8763.
* Update security tracker for CVE-2018-8763.
* Mark CVE-2018-8764 not-affected in wheezy due to no CSRF support.
* Upload fix for CVE-2018-8763.
* Publish advisory DLA-1342-1.
* See the `ldap-account-manager thread <https://lists.debian.org/debian-lts/2018/04/msg00027.html>`_.

patch
~~~~~
* Try to understand
  `security patch <http://git.savannah.gnu.org/cgit/patch.git/commit/?id=123eaff0d5d1aebe128295959435b9ca5909c26d>`_.
* Posted `message <https://lists.debian.org/debian-lts/2018/04/msg00058.html>`_ to debian-lst.

python-crypto
~~~~~~~~~~~~~
* Send updated DLA-1283-2 for advisory for CVE-2018-6594.
* See the `python-crypto thread <https://lists.debian.org/debian-lts/2018/04/msg00016.html>`_
  for details.
* Update security tracker entry for CVE-2018-6594.

python-django
~~~~~~~~~~~~~
* Upload fixed versions to Stretch and Jessie.
* Work carried out last month.

rubygems
~~~~~~~~
* CVE-2018-1000074.
* See the `rubygems thread 1 <https://lists.debian.org/debian-lts/2018/04/msg00015.html>`_.
* See the `rubygems thread 2 <https://lists.debian.org/debian-lts/2018/04/msg00042.html>`_.
* Followup on response to debian-lts.
* `Update dla-needed.txt <https://salsa.debian.org/security-tracker-team/security-tracker/commit/062fb559a1fbbc5909337685c8ebaa9cdffe1e30>`_.
* `Mark package <https://salsa.debian.org/security-tracker-team/security-tracker/commit/88592a572dcd21aabff91448e8117c0548161a2e>`_
  as no-dsa for wheezy.



