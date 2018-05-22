---
layout: talk
title: Challenges in Data Centre Growth
conference: /conferences/2010/01/23/LCA2010/
speaker: Paul Gunn, Weta
begin: 2010-01-19 10:30
---
You need how many processors to finish the movie???

Visual effects house.

If it took 24 hours to start a movie, a visual effects
house would start at lunch time.

Generally end on time, depends on director.

Artists you top end computers.

90% artists use Linux. Adobe Photoshop is main program that
doesn't work on Linux and requires Windows.

70% use Maya.

Rendering process, is a farm. Isolated nodes, running independantly. If node
goes down we can restart the job. Queuing system. Tasks are 10 seconds to 48
hours. System works out what tasks can run in what order and which tasks can
run in parallel.

3700 machines, gigabit connections, 500 10 gigabit ports.

Machine room, first had everything, including bad habits and problems.

Now 9 machine rooms, hot rooms (rending machines), storage rooms, etc.

35000 cores in renderwall.

First renderwall 2.4Kw. One fan in machine room to cool.

Hot racks 22kw heat to 27kw. Unheard of in standard machine room
design.

700kw most of the week for entire machine room, late October. Flatter closer
to deadlines.

Standard machine room.

Don't put racks in line, hot, cold, hot, cold, etc, this is bad.

Smoke detection, sometimes gas would be released accidentally and
fire service would be called.

Oil leaking over wires, was difficult to find out what was wrong.

Best machine room, HD Room:

High ceiling very useful. All services above floor, except for air. Not
scalable. Limit to how much cold air you can blow through floor space.

Water cooling 30cm wide pipes. Room has 6 rows, and put 60 cabinets in it.

Chiller unit.

Fire sensing and front and back of each rack, fire sensor will shut down
rack. Do not wire up entire room so that it will go off with one sensor.
Faulty sensor will bring down entire machine room.

32 amp three phase power points for each rack.

Cold air through the floor, collected by hot air pipes through the
ceiling.

Main switch board very long. Very large UPS. Bigger project then
most people would see.

1km of ladder racking as start, now over 2km.

Plant room, chillers. Feed cold water to it. 500kw chiller, 1 Mw chiller.
Quieter then some pumps. 14000 (44000?) RPM.

Water is much more efficient then air and transferring heat. 100 litres air, we only use 60 litres
and hour water.

Running Renderwall at 25 degrees, no ill effects, equipment still under warranty, saves power.
We could run it hotter, but machine room not designed for it.

Successes:

* Room to expand.
* Nothing under the floor. Lights under floor. Flood sensors.
* Safe from catastrophic leaks. High floor, even if it floods machines won't be effected.
* Hot air plenum. Capture hot air. Put false roof on if too high.
* Water cooling, never had leakage.
* Free cooling. Won't work everywhere. Requires bad weather. Makes life easier.
* Run servers hot.

Challenges:

* Hot/Cold storage ratios
* Structured cabling
* Supersized racks
* HD room - vendor lock in?
* Humidifier
* Integrating building systems was a hard process.

Future:

* Still have space to expand
* Water cooling for storage
* Run renderwall an 28C
* DC power? More benefits running room hotter, may not come for a while.

Heating is not an issue with have any our building, each desk has two high
power computers.

Blade servers, rather the pizza boxes. Once a day a script runs through and
harvest status code from each node. Too many errors on node, machine is tagged
as possibly bad.  We have so many nodes, one bad node isn't going to hurt us.

All nodes are identical. Not an issue if they do change a bit. 3 tasks per
machine. Limiting factor is memory. 8 core machines. Code is multi-threaded.

Automatic turning off feature resulted in us overloading one phase, management
of phases to equalize use is difficult. We turned off this economy feature as a
result.

Power usage, end of the wire. 2 separate 11Kv supplies. Not worth putting a lot
of money in for more redundancy, if one of the supplies failed we would
experience problems.

Hardware vendor HP.
