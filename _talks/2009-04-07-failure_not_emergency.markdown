---
layout: talk
title: Relax! A failure is *not* an emergency
meeting: /conferences/2010/02/02/LUV/
speaker: Arjen Lentz
begin: 2009-04-07 19:00
---
I value my free time.

Emergencies are unnecessary, time consuming, money gobbling, and distracting.
Indicate a failure in the design. If I keep putting out fires all the time I
can't do anything useful.

Need to test statement, by trying to proof it wrong. So I will try to prove
this wrong.

Data in data centre

* Problem if data centre fails? Depends on if the data
comes up again or not. Depends if customers also use the same data centre.
Data centre going down for several hours is not a emergency, stuff still
runs, if automatic fail over.
* Manual fail over? Is cost of call out cheaper then then cost of automatic
fail over.
* If data centre is nuked, then world will be destroyed within five minutes,
so that is fine.
* Darwin lost connectivity to Australia and phone connectivity.

Mobile phone network

* Can wipe out any carrier in Australia, due to architecture design.
* Queensland, someone dug up cable, Cable broken, fail over takes over, interface card fails. Cascading failures.
* Could happen because capacity of both primary and backup links required in standard operation. Usage
grew, but infrastructure wasn't expanded.
* Used Telstra for fail over, but arrangement with Telstra didn't work.
* If plumber/trades person, and mobile phone doesn't work, then out of business for a day.
* One person digs up the cable and the whole phone network failed.
* Same thing happened again. Somebody dug up cable at Coffs Harbour.
* What happened to fail over? Don't make the same mistake twice - make a new one.
* Dice doesn't have memory. If you roll a 6 you could still roll a 6 again.

Network won't work locally when cable broken

* One network for all of Australia.
* Multiple networks would be very expensive.
* Single point of failure.
* Wipe out exhibition street Melbourne, wipe out all of Telstra for a month.
Lots of single points of failures still exist.

Power failure

* Use Backup generator.
* Use contractor to refuel generator.
* If power black out, contractor will refuel clients that pay the most first.

Insurance

* Is it cheaper to insure against potential problem as opposed to fixing the
problem?
* Prevention better then cure. Insurance doesn't always help.
* Suing someone doesn't save your business.

Tuning

* Only needs to happen once for life time of product.
* The client can be wrong.
* Don't disable systems for increasing reliability because of blind trust of one system.
  * eg. RAID is not a replacement for the database checking options in mysql.

Open Query doesn't provide emergency support

* Lack of staffing. I could become the single point of failure.
* Living by my principles.
* Can't fail. Or unlikely to fail?

Consequences of emergency support

* Need to employ people, people without a life, willing to be disturbed 24 hours
a day.
* Allowed me to save money. Employ a different type of person. A happy type of person.
* Entire company becomes slightly more expensive.
* Everyone else already does it. Doesn't give me a competitive advantage.
* Not doing it allows me to give this talk.
* I will never get some clients. Some clients live from emergency to emergency.
* Management by crisis. IT departments are bad. IT does it a lot.
* Other companies price things accordingly to crisis management.
* I am aiming for non-consumers.
* Will transfer client to competitor if they are not happy with our service. If
we try to bend oover to help them, they will move to competitor anyway and
won't recommend us.

The people who understand this are not the ones who can fund this.

Companies very rarely analysis cost of downtime vs cost of engineering to avoid
the downtime. In cost need to factor in brand, damage to reputation, etc.
