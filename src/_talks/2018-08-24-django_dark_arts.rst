---
layout: talk
title: Django Against the Dark Arts
conference: /conferences/2018/08/24/PyConAu2018/
speaker: Lily Ryan
begin: 2018-01-24 17:10
---

Django Against the Dark Arts
----------------------------
Penetration tester from Melbourne at assurance.com.au.

"It was once my job to think as dark wizards do."

Defending philosophers stone
============================
3 physical defences.

* All had known Vulnerabilities.
* Hagrid disclosed one vulnerability with three headed dog.
* Troll has known vulnerabilities. One use only.
* "Don't want to implement security measures that can be breached because an
  11 year old panics."
* Keys, No rate limiting, numerous broomsticks lying around. Multiple
  simultaneous attacks possible.
* Same with mirror. Mirror could have been stolen and put in public place.
  If Harry hadn't tried to look for stone, it would have been safe.

Hiding sensitive information by using non-obvious names may be cheap but
is ineffective.

Intellectual defences. 2 of them. Chess or logic puzzle (potions). Buy time,
allow time to response. Useless buying time if you don't know there is an
attack under way. No monitoring or alerting.

Lots of alerts whenever somebody does illegal magic or says the name of the
evil wizard.

Defences got in the way of good wizard trying to protect stone.

Goblet of fire
==============
Cup that imposes rules. Age restriction 17 or over. Only one child per school.
Only three limit. Harry at 14 is picked as number 4.

Line that can only be crossed if over 17 years old. Not monitoring or alerting.

Somebody could add another person's name to goblet. No checking to ensure that
the person was adding their own name. No authentication or authorization.

Goblet was tricked into thinking there was a 4th school. No data validation
on date added. No data sanitisation. Never trust user input into your app.

12 Grimmavld Place Defences
===========================
Magically concealment of secret inside a person. Secret unless person chooses
to divulge it. Once somebody else knew, that could not pass it on even if
tortured. Dumbledore writes it down, and Harry reads it. Dumbledore didn't
know about transport encryption. Once Dumbledore dies, secret keeper becomes
somebody else::

    git add secret-hq.json
    git commit -m "yolo"
    git push

No concept of key rotation.

Dumbledore set himself as secret keeper even though he know he has going
to die. No disaster recovery. "Yes, I am calling Dumbledore a jerk."

Voldermort's security model
===========================
Voldermort make backups up himself.

7 backups. Stored in geographic different locations.

He used personally relevant information as key to secure backups when creating
them.

No alerting or monitoring of Horcux by attacks from Harry Potter. Even though
he had alerting by other things.

Voldermort trusts nobody and has no friends. Dumbledore creates teams that
trust each other and provide mutual support. Can provide better security if
you are paranoid and believe everyone is out to get you.
