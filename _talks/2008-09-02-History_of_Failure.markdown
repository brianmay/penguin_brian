---
layout: talk
title: An Illustrated History of Failure
conference: /conferences/2010/02/02/LUV/
speaker: Paul Fenwick, Perl Training Australia
begin: 2008-09-02 19:00
---
Worlds first computer, ancient Greece.

* Worlds oldest software calloboration
* Worlds oldest bug fixes and feature creep.
* Plundered by romans; ship sunk.
* Ship underwater for 2000 years

2006: X-Ray analysis.

* Worlds oldest documentation.
* Hardware failure biggest problem.

1947 first computer bug pasted into log book.

* Software can be perfect

1983 software can be perfect: radiation machine. PDB-11 machine.

* Errors caused by hardware errors and electromagnetic interference.
* Wrong mode 1 in 250,000 times, by manual.
* Removed hardware interlocks, software will do it properly.
* Wrong mode 6 times in 3 years, documented via legal action.

* 1962: Space craft suppose to go to Venus, shortly after lift off lost ground signal.
* Guidance computer should resolve this, but it had a bug in the specificiation.
* Hand written specification wrong.
* Adam Kennedy "It is possible to make mistakes so large they invalidate your entire worth as a Human Being"
* How much is a person worth?
* US Dollars
* One Australian $3.17 million in a life time.

AT&T

* 1990, network of long distance switches.
* faulty switch would send fault code to neighbour switches
* neighbour switches would route around faulty switch
* 3 way hand shake to restore faulty switch - speed things up.
* decision made to remove 3 way hand shake, neighbour assume any communication neighbour is bad.
* in practice switch would decide it was bad when neighbour came good because neighbour sent ok signal and started sending data
before routing tables could be updated
* result: failing node would result in all nodes failing and rebooting.
* solution - make outgoing calls slower

Alemenian Smelter

* Under computer control. NZ.
* Comalco Australia.
* 1996 was a leap year.
* NYE was day 366, this was not expected.
* All computers crashed on the stroke of midnight.
* 2 hours later computers crashed in Tasmania for same reason.
* 5 Cells completely melted down. $1 million dollars to repair. Total cost unknown.

Space Launch

* 1996 - space vehicle veered off course.
* 64 bit floating point number. Convert to 16 bit integer.
* Exception handling disabled for this piece of code.
* Arithmetic overflow.
* Big number + 1 = Negative number
* Rocket decided to head down instead of up.
* WTF???
* Obvious mistake.
* Reused code from previous revision of rocket.
* Previous rocket could not move fast enough to cause value to overflow.
* Testing. Was code tested? NO!
* "We tested the code and the rocket went up and turned around!"

Auckland blackouts

* 1998 blackouts.
* Auckland CBD without power for 5 weeks.
* Bad planning. Not bad software.
* 150MW load. Increased.
* Cables 110 MW cables. 4 cables. Cables deterioated. One cable failed.
* No attempt at load reduction. Could cause bad publicity and ruin reputation.
* Cables 85 MW cables. 3 cables. One cable failed.
* No attempt at load reduction.
* Cables 60 MW cables. 2 cables. One cable failed.
* No attempt at load reduction.
* Cables 0 MW cables. 0 cables. No cables failed.
* Who was at fault. El Nino.
* Cables overloaded, they knew in.
* No investigations into failing cables. Failed cable, fixed, not investigated.

System administrators

* Sky is always falling. System administrators always talking about what is something goes wrong.
* Ether-killer: Ethernet cable with mains plug at one end.
* Don't make skies fall down.
* Need to listen to the system administrators.


Space vehicles

* 1998
* Fire ball. Plumeted through atmosphere.
* Imperial (pound force)  != Metric (newtons).
* Cut testing budget. No testing.

Mars lander

* Landing thrusters stopped working considerable distance before the ground.
* Landing gear vibrated on way down.
* Software: if gear vibrates, we have landed, turn off thrusters

One requirement

* We have to hit Mars.
* Hit at least 644km/h.
* No data come back.
* Forgot to test batteries after storage for a year.
* $30 million dollars.

Biggest failure

* North America Power blackouts, 2003.
* 50 million people affected. 2.38 times Australia.
* North part of America and part of Canada.
* First step: Who do we blame? El Nino!
  * Storms. No, sunny day in New York.
  * Fault of Nuclear Plant. Power plant still running despite the fact it was still running, with no grid connection.
* What happened?
  * Was a lightning strike
  * One power company Ohio.
  * 2:15am alarm system fails, silently. Everything come up as good. Not updating. All green.
  * Alarm system crashes. Hot spare took over, and then failed silently.
  * Main 345kv line sags into tree and shorts. Nobody notices. Automatic routing bypasses problem.
  * Lines start getting overloaded.
  * Network horribly overloaded.
  * Just one little power company.
  * External monitoring - Reliability Coordinator should detect problem.
  * State estimator - Contingency plans. Runs every 5 minutes. Cron job. Reports what they should be doing. MISO
  * State estimator had an error. Agencies share data. Bad data causes the program to stop working. Bad data takes
    45 minutes to solve. Engineers forgot to restart the software and re-enable cron jobs.
  * Turned in on and it crashed again due to bad data. Neighbours report all our lines are up when the aren't. Took time to fix.
  * 3 major lines down, 11 smaller lines when down too.
  * Call up the energy company, but their power failed at that time too.
  * MISO couldn't handle bad data.
  * Alarm system, multi-threaded, race condition, multiple threads can update same data simultaneously. Data corruption meant updats
    stopped working.
  * 6 billion dollars cost.
  * 32 hours down time.

Lessons learnt

* Test your code. Test your code end to end.
* Test your systems before your launch them, not after them.
* Test your specification.
* Listen to your system administrators.
* Think of race conditions.
* Test for race conditions.
* Think some more of race conditions.
* Race conditions very bad.
* If going to deploy code without testing, do so in New Zealand.

Questions:

* Nothing noticable from year 2000.
* vmware - after certain date you couldn't restart vmware.

