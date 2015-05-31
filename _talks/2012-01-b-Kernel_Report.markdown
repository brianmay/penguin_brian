---
layout: talk
title: The Kernel Report
meeting: /conferences/2012/01/20/LCA2012/
speaker: Unknown
begin: 2012-08-16 09:00
---
2.6.37 released 2011-01-04

Since then 5 more kernel releases

printk no consistancy, bad for translators, automatic testing, documentation, etc. Structured replacement needed. The Journal.
Controversial proposal. Will be hearing more in upcomming year.

Hardware companies working better with Linux and pushing changes to existing drivers, rather then submitting new drivers.

Red Hat stopped releasing individual kernel patches since February. Need to take into account that they are a commercial company, and their
best interests aren't inline with best community interests.

2.6.38 released 2011-03-14

Moving QEmu replacement into kernel tree. Controversial. Fight on going.

Fight with vendors over proprietary drivers needs to be repeated for every device type. We generally always have succeeded in the past,
should continue to succeed in the future.

Seccomp - sandboxing for Chrome. 2nd version might succeed.

2.6.39 release 2011-05-18

Big kernel lock removed after 15 years

2.6.40 merge window. Decided to switch to 3.0. Got sick of big version numbers.

Ext4 snapshots. Why making these changes to stable file system insteadd of the unstable file system btrfs? ext4 will continue to developed.

UEFI secure boot. Only one problem. Who is trusted? The owner? The hardware vendor? The software vendor? The entertainment industry? We may
loose control of our computers. All x86 systems can be put into setup mode, it will be possible to install a signing key. Installing key
may not be easy even for computering professionals. ARM systems must be totally locked down, no provision to configure it. We must continue
to fight.

New realtime patch. Most part the realtime patch just works. Involves scary locking assumptions. May get merged into mainline kernel this
year. Some problems still need to be resolved.

3.0 release is delayed. dcache scalability issues. Took several days to resolve. Some parts of the kernel have readed a trulý scary level
of complexity.

3.0 released 2011-07-21

x32 is needed for larger memory accessiblity. Data is bloated even though 64 bit pointers are rarely required. x32 ABI to get the best of
both worlds.

Kernel.org compromised. Hackers had been on system for some time. Release of 3.1 is delayed. Kernel.org off line for almost 2 months.

A new kernel.org system, new staff to manage it. 450 shell accounts probably a bad idea. New system has no shell accounts. Still we do not
take security problems seriously enough.

Oracle to use btrfs by default. Btrfsck still missing. Raid 5/6 support (patches exist), etc.

3.1 relased 2011-10-24

Embedded long-term support initiative. 2 year stable kernel. One kernel/year.

Per group TCP buffer limits. First attempt to limit kernel memory usage on behalf on processes.

Control groups. A lot of cleanup in this area. Need somebody to step up to the task.

LTTng pulled into staging

Debate: Maintainers need to say no more often. Vs. Widely used code should be integrated. LTTng lost.

The Android merging project.

3.2 released 2012-01-04

In merge window for 3.3 right now, so don't have full feature list yet.

Android drivers return.

Expected out in March.
