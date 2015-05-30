---
layout: talk
title: War, Space and Science Fiction; Automated Scheduling in the Real World
meeting: /conferences/2010/02/02/LUV/
speaker: Elena Kelareva; OMC International
begin: 2009-06-02 19:00
---
## Scheduling

* Have a set of tasks that require a limited set of resources.
* Need to be scheduled so tasks can run without clashing.
* If you have more tasks then time or resources allow.


## Examples of scheduling

Making breakfast

1. Eggs
2. Toast, butter toast
3. Coffee

Assembling cars

Painting car

1. Undercoat
2. Wait
3. Paint
4. Wait
5. Polish

Chocolate factory, need to clean machine after making peanut bar (as people are
allergic to peanuts). No need to clean machine after making milk bar.

CORALS: COmbat Resource ALlocation System

* human operators good at sequential threats.
* human operators have problems dealing with multiple threats at same time.
* computer gives operator advice but doesn't take over.
* Scheduling vs planning: Scheduling and planning are two distinct concepts.
* operator need to trust the plan it comes up with.

How CORALS works

* Local plans (for every individual conflict) -> combined plan (lots of conflicts).
* combined plan (with conflicts) --> combined plan (no conflicts).
* Need to replan if threats change.

Hubble telescopic

* Only one telescope.
* Vision blocked by earth and sun.
* South Atlantic anomaly.
* Super novas, other special events, may take priority
* Need to schedule to deal with these.
* 1 completed piece of research more valuable then lots of incomplete pieces of research.
* Schedule at any time has list of priorities, which task is most important.

Patients at a Hospital

* Hospital is a limited resource with many patients.
* Diagnostic machines are a limited resource.
* Need to allow time for emergency patients.
* Patient in hospital can have test done over several days.
* Patient from outside doesn't want to keep in on multiple days for different tests.
* Some doctors only available 9am-5pm.
* Some doctors may have preferences as to what machine is used.
* Early time spots cheapest, if they don't get used they are wasted.

CPU scheduling

* Want UI to be responsive.
* Want background tasks to be fast.
* Switching between tasks faster may slow everything down.
* Super computer priorities different to desktop priorities:
  * UI responsiveness important on desktop computer. Don't want to wait for
  ever to have mouse pointer react to mouse movement.
  * Background tasks more important on super computer.
* Be fair to all processes. Don't let processes starve.

Port scheduling

* Port of Melbourne
* Work out when a ship can safely leave or enter a port.
* Work out 48 hours in advance how much the ship can be loaded to leave on time.
* Currently scheduled by hand, need to automate scheduling process.
* Some small ships can fit in at any time.
* Factors:
  * tide, air pressure
  * way the ship responds to waves (wave response)
  * squat - large ship in narrow channel, sucks ship to bottom
  * heel - when ship turns, one end goes down
  * bottom clearance
  * maneuverability margin
* What happens if it goes wrong? Ship gets grounded.
* What happens if ship doesn't follow instructions? Ship gets grounded.
* 1 in 30,000 grounded ships is considered acceptable for port.
* Scheduling issues can vary depending on port.
* Optimise function - maximise profit for company.
* Shipping companies want to have more say in their schedules. Currently port
decides.
* Normally would use new system along side old system for 6 months, check
new system generates good results.

Related to operations research.
