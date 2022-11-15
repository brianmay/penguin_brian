---
layout: page
title: System Administration
description: I am a skilled Linux systems administrator.
---

I have always been very excited about Unix based operating systems, even before
I was able to get a copy. This is a history of how I have come to where I am.

## APANA - 1990s

Initially I ran a [Bulletin Board System
(BBS)](https://en.wikipedia.org/wiki/BBS), for a local computer club.

Internet was almost unheard of then, so we used
[Fidonet](https://en.wikipedia.org/wiki/Fidonet) instead. Connecting to a remote
computer meant looking up the telephone number in a database, and dialling the
number on a modem. As such, was Fidonet world wide network like the Internet,
only it cost more for long distance connections. As such it was best suited for
sending email. Each computer in turn would forward email to the next computer
in turn until it reached its destination. Private email was unheard of. There
was a private message type, but you expected system administrators (SYSOP) to
read your private mail regardless. Unfortunately, with increased use of the
Internet, Fidonet isn't nearly as popular as it once was, and I no longer
connect to it.

The earliest iteration of the BBS run on MS-DOS. When I wanted to do
administration duties - even reading emails, I had to take the entire system
offline because MS-DOS can only run one task at a time.

Eventually we moved the system to an OS/2 based system. Unfortunately I was
never able to get OS/2 running as reliably as I would have liked. I was told
this was due to flaky hardware, but my finances were limited and I couldn't
afford expensive hardware.

Eventually, when I got a permanent dial up connection to APANA, I was able
to move my system to Linux. In comparison with my experiences with OS/2, Linux
was rock solid. I was hooked.

APANA was good because at the time it was the only feasible (ie. affordable)
method of connecting to the Internet. As an extra bonus, they supported
permanent connections. I use to allow people to dial into my computer to access
the Internet via a text mode Linux interface in return for a small donation.
Unfortunately, the increased competition from ADSL meant I could get a cheaper
connection that was faster, and I made the change to Westnet. At the same time,
APANA lost numerous members for similar reasons, and Ross House (where the
central hub for Melbourne was located) suddenly decided we were a "for profit"
organisation, and increased our rent. We could not afford the old rates, let
alone the new rates. The bottom line is that the HUB is no closed, and APANA in
Melbourne only exists as DNS entries.

Around this time, I also become a student at Monash University. Eventually I
found out even though I was only a first year student, I could get an account
on the DECstations running Ultrix, and later the OSF/1 machines. I fell
in love immediately with Ultrix. Looking back I am amazed considering some of
the serious limitations of the operating system at the time.

During this time I become familiar with common open source packages, I used
RCS to keep track of revisions of my home directory and LaTeX documents.
Eventually I moved to CVS and moved from telnet to ssh.

## SWS - early 2000s

I used to work at a consulting company, SWS. They provided help assisting
clients, mostly schools, but also some big companies, to connect to the
Internet. We also helped them maintain there computer systems.

This was made challenging because some clients gave us full solutions (e.g.
please connect us to the Internet using Satellite) but didn't give us the
requirements (we absolutely must have very low latency because our POS (Point
of Sale) requires a live connection for every sale). This resulted in us
giving them solutions that didn't meet their requirements (satellite
connections by definition have high latency). We kept changing the connection
so frequently for one client, that eventually I made a mistake and ended up
with asymmetric routing through the pair of routers (one primary and one for
backup). The stateful Linux based firewall started incorrectly blocking POS
traffic.  Unfortunately, I had no way of testing this remotely after hours when
I did my work, because the only computer systems I had access to were the
routers.

I fixed the problems, and proposed measures to ensure this would not happen
again.

## VPAC - late 2000s

In 2006 I got a job at VPAC, an organisation that ran supercomputers and made
them available for researchers across Australia. I started off being
responsible for maintaining the staff Windows desktop computers. My first job
was setting up a NT style domain for sharing files using Samba and LDAP. This
was to be set up across two different sites.

I continued my work with Desktop support, which become more and more involved
with network infrastructure, and fixing server problems. While at the same time
my work with Python continued to grow. Eventually my desktop support duties
were taken over by other employees, leaving me more time to do the other
more interesting tasks.

During my work at VPAC, I went to Hobart to visit the Australian Linux
conference (LCA2009). On the first day, the RAID system at VPAC holding all
user's data on the clusters decided to die. Then instead of coming back online
as expected, the controller decided to reinitialize the partitions, destroying
all data in the process. My efforts were required to remotely connect to TSM
and issue the commands to restore all 2TB (from memory) of data.

I worked on a number of projects during my time as a system administrator at
VPAC. Perhaps one of the most notable was getting a 2nd hand IBM tape library
up and operational and running regular backups of all the systems using IBM's
TSM backup software.

For more details on my programming at VPAC, see my
[programming]({{ site.baseurl }}/skills/programming/) page.

VPAC (aka V3 Alliance) closed operations at the end of 2015.

## Electronic Arts - 2020s

I started getting involved more and more with [Kubernetes]({% post_url
2022-11-15-kubernetes %}).

I also was employed by Electronic Arts to help manage their Kubernetes
clusters.
