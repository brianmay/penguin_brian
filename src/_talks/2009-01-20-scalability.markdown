---
layout: talk
title: 747s on Treadmills, Experiences scaling uptime and management
conference: /conferences/2009/01/24/LCA2009/
speaker: Matt Moor
begin: 2009-01-20 09:30
---
Downtime is expensive.
Every minute of downtime $3-$5k per minute lost.

User experience of website depends on the latency of the website. Latency will
vary depending on country. Putting servers in remote countries is expensive.
We had a small budget.

Spent a lot of time eliminating single points of failure.

Push content as close as possible to user by use of reverse proxies.

We used a lot of replication and caching. It didn't make sense to cache a lot
of the website, because it designed for the user.

A lot of attention to failover, using heartbeat, etc. Didn't want to have to do
his manually at 3am.

Active/Active is too hard. Especially when you need to keep state. Databases,
etc.

Active/Passive is easier, but has 15 seconds downtime.

MySQL doesn't have any conflict resolution. Writing to the same database really
bad.

Squid. Will reduce load on cluster and reduce latency moving content closer to
the user. In our case this means user is more likely to give us money. Squid
very high performance, low load.

Geographic based DNS records. Redirect user when requesting www.* url to closest
site. Can terminate SSL at proxy servers. Reduce cache load times. Set content
expiry headers appropriately, or no speed up will be noticed.

Load tools: Test, optimise, and test.

Configuration management. Reasonably new idea. e.g. cfengine. Ensure
infrastructure is consistent. Very important. Takes a bit more time. We would
like to use puppet. Ability to see history of changes is very good. Also good
for determining problems. Good for ensuring all nodes are the same.
Unfortunately we don't use any configuration management.

We went live. Somebody dropped the wrong database. Restore from backups.
Configuration management would have solved this.

Murphy was an optimist. 7 days after it went live. Single CPU core started
introducing errors. Processes started dieing. Silently. Mysql processes were
affected. CPU fixed.

2 days later, memory errors. Replace memory.

11 days later, guest VM started dieing with memory corruption errors. Replaced
memory in host.

3 days later, second host crashed with memory errors. Replaced memory. Errors
continued occurring. Seemed very suspicious.

Incompatibility for 4GB DIMMS with this type of system. Working with vendor
took 3 weeks to diagnose problem. We were able to use loaner equipment from
vendor during this period. Good relationship with vendor (Sun) very helpful.
One week we were down to a single server, and single MySQL server No
redundancy.

Non-intrusive diagnostic command. The kernel paniced. The diagnostics stills
CPU from host OS, and engineer forgot to run the command to give the CPU back
to host OS. System back up and running after 10 minutes. After 1 week we replaced
all memory in all systems. Our support team didn't get a lot of sleep.

Superstition doesn't help. Don't touch the server, it will break! Not a good
approach, it doesn't help talking about everything that can go wrong without
evidence. Tried to clamp down on this, but it is still a culture issue and needs
to be dealt with when things go wrong. No answer, hard when you get spooked by
multiple failures. Ultimate answer, return to the evidence, the computer science.

Save money by running stage (test environment) on the production
infrastructure. Not a good idea. Accidentally wrote 1 hours worth of financial
transactions to stage database.

You will miss something. Inevitably.

SQL code to total donations, and order by country. 5,000,000 rows examined. 794
seconds. Browser typically times out after 300 seconds, if user doesn't try to
reload first. Virtualisation really helped. Change to refresh only every 10
minutes. Cost to make this run in real-time significant.

Distributed work load between physical (best for applications that don't scale
vertically, e.g. database servers) and virtual servers (cheapest option).

All about improving user experience. Reduce Latency. Get around browser
limitations. Improve scalability. Easy to forget this and get tied down on the
technical issues.

Results: 1 hour down time in 2008. Sustained peak traffic 20.89 Megabits/s.

Donations: 500,000 or A$25,000,000

Good results for charity.


Melbourne cup day, stopped the website. Utilisation goes down significantly.
