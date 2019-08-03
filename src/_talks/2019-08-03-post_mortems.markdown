---
layout: talk
title: "Post-mortems: Building better software together."
conference: /conferences/2019/08/02/PyConAu2019/
speaker: Thomi Richards
begin: 2019-08-03 11:50
talk_url: "https://2019.pycon-au.org/talks/post-mortems-building-better-software-together"
---
Complicated machine.

Car: If it goes wrong, we take it to a mechanic to fix. They can
predict the likely impact of their actions. If good engineer, it usually works
out for the best.

Same with software engineers. If it goes wrong, lost of money, lose of
reputation, etc.

If skilled engineer can identify impact of change before making a change,
if something goes wrong we can anaylse and identify root cause.

Probem occured because database config didn't exist.
Why? Migration didn't run.
Why? Migration is manual, engineer didn't run it.
Cause: Engineer is a bad engineer.

Blame. This makes the engineer feel bad. It sets up bad culture where
blame is seen as a bad thing, and people try to blame other people for
mistakes.

At best, marginal improvements are possible. Not very helpful.

Cynefin Framework. Very interesting, required reading.

Software engineering exists in the complex domain. We cannot be 100% sure
of the impact of our changes.

Complex software. Code flows out of your brain and into production.

In order to update code, you need to understand the code you are changing.
In order to do that, you need to read the code and create a mental model of
the code, and able to work out a change to the mental model that will allow
making the required change.

We have formed a network of concious changes. However communicating
in Python instead of English.

Software is built by teams, not individuals. Communications important.

Instead of drilling down and look at root causes, we analysis the system
as a whole. What systems prevented as running a experimental change
successfully. What systems provided us with misleading information on
experimental change.

Failure of us not being able to experiment correctly. Change was deployed
to all systems at the same time.

Developer didn't flag change as having significant impact on deploy.

How sould I run my own post-mortem process? It depends.

Incident reponse. Oh my god production is down, we need to fix it.

Incident analysis. Not fix out problem. Improve resiliency. It doesn't matter
if things a fixed that have nothing to do with the problem.

Analysis facilitators.

* 24 hour delay.
* Responding to outage hard. Stressful, can require working late.
* Communicate synchronously via video call. Important not to use asynchronous
means.
* Example language supplied to kick of the call.
* Objective record of everything that happens during calls.
* Timezones.
* Need to get input from everyone on the call. Need to capture all perspectives
and put them on a timeline.

We are not trying to find out what went wrong. We are trying to find out
what led to experimentation to fail.

Misleading text could cause you to make wrong decision during outage,
which slows down fixing the outage.

Members for Analysis team should be diverse as possible. Front end
engineers, back end engineers, support engineers, etc.
