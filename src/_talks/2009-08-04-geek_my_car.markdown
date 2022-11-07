---
layout: talk
title: Geek my Car
conference: /conferences/2010/02/02/LUV/
speaker: Jonathan Oxer, Australian Geekist car
begin: 2009-08-04 19:00
---
Last June acquired a car, aka 241km/hour web server.

Most people have no idea how the car electronics work.

ECU - Electronic Engine Control Unit.  
ABS - Anti locking breaking system.  
etc

Only 8 computers, not nine, as my car is not automatic.  This is a 7/8 year old
design, modern cars will have 40+ computer systems.  Modern cars are like a car
simulator, everything is like fly-by-wire. Everything is connected to computer,
not physical controls.

Computer can override brake controls to add stability. Scary though.

Computers can't save you in getting out of impossible situation. Can only do what
is physically possible.

BUS through car. All 8 computers on the computer travel on this bus. Standard
networks: Packet collisions can occur (on buses).  Don't want to have a
collision occur while sending "deploy airbag" command with "adjust radio
volume" command. Solution: Dedicated bus lane?

CAN bus prevents collisions. The higher priority controller always wins, and
has priority over the lower priority controllers. No contention. High priority
signals get through always no matter what. Synchronous protocol.

Display module, for stereo system, has a connection to the anti-lock brake
systems.

Where to start? Where to start without killing yourself?

OBD-II: On board diagnostics. 1996. Most cars have OBD-II support, even if not
legally required. OBD-II is a standard. Firewall on perimeter of cars electronics.

"USB to OBD connectors: Car Scanner AUTO Scan Tool CAN BUS ODB2 OBD USB V1.3" -
looks like a serial port.

Modes and parameters. Takes AT style commands. Mode is a way of grouping
parameters together. Not all cars implement all modes. Most implement mode 9,
Vehicle Information. Most interesting is mode 1. A surprising amount
is documented online. Is possible to purchase standard for thousands of
dollars and this doesn't help you much. Everything returns hex values.
Unsigned 16 bit hexadecimal values may need to be converted to actual
range of value.

<https://geekmyride.org/wiki/index.php/Trent's_Magna>

Alix-1 motherboard from:
<https://yawarra.com.au/>

<https://geekmyride.org/>

Car to car mine sweeper. Car based pac man. I void warranties.

If I interface directly to CAN bus (Linux has support for this), new
applications now possible because you are no longer restricted to the
diagnostics interface. e.g. have car SMS you it it is involved in an accident,
when parked. Call 911 automatically, and give location, if involved in car
accident.

Progressive maintenance when it is needed. Mechanic can log on to car remotely,
run diagnostics, and produce a report.

A lot of this is being prototyped by car manufacturers. Cars be be online, and
require a SIM, 24 hours a day.
