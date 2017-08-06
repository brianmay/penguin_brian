---
layout: talk
title: Rockhopper Robot
conference: /conferences/2008/02/02/LCA2008/
speaker: Doug Chapman, HP
begin: 2008-02-02 13:00
---
Designing and programming and Autonomous Robot with Linux

Rockhopper

Completely autonomous, can sense its environment, and candle heat.

Trinity College Robot Contest

* not Battlebots
* must be completely autonomous
* find a flame (candle) in a house like maze
* multiple divisions
  * kids division, all the way up to expert division
  * expert division: 2 flames and a baby, and 2nd story.
* I won the competition

Physical thing, needs a body.

* Used open source software to design robot. xfig. Print diagram
out, stick to a sheet of plastic, diagram shows where to cut holes.
* rubber tyres, made of silicon

Electronics

* AVR ATMega32 boards.
* very simplistic custom design
* 8 A/D conversion ports
* communication to the ARM via I2C
* in circuit reprogramable
* development easily done with GCC on Linux, very open source
friendly, all software development can be done under Linux.
* board layout designed with open source software

Sensors

* bumper switch
* infra-red distance sensor, avoid walls
* sonar rangefinders
* wheel rotation seensors
* heat sensor for finding baby, drop sensor at baby, so
fire fighters can find baby
* flame sensors for candle

Rockopper's brain

USB wireless Internet

USB ethernet

2.4 kernel, hacked to get 2.6 kernel going

* physical memory has large gaps in the memory space.
* wrote device driver for digital IO port
* TS-DIO24 has 24 purpose IO lines
* can configure any as input or output
* PWM pulses for PWM motor control
* used for motor control and simple digital inputs

I2C serial protocol

* simple protocol, no synchronisation required, no need to
keep in sync like RS232. Very robust protocol.
* device driver would hang regularly, so I had to rewrite it.
* definite learning experience.

What distribution?

* no formal distribution: kernel, busybox, dropbear (minimal ssh server), various shared
libraries, gdbserver.

programming the bot

* cross compiled gcc and libraries
* robot runs NFS and sshd over wireless LAN
* starting a new version is very simple

common pitfalls

* nobody knowns what the real problem will be until they hit it
* people think through the problem at a high level and ignore
the simple stuff - how do you navigate the maze, build a map, and
the robot gets stuck going around a corner
*  Keep It Simple Silly

behaviours

* each one runs as a seperate thread, and run by priority
  * extinguish - if candle appears, extinguish it
  * each behaviour small and small and not part of the navigigation

wasn't able to bring the robot here, se demonstrating it remotely

2.6.20-30 kernel, full shell environment, make robot navigate maze

5 second delay, on other side of te world.

really simple code for navigating the maze, would like to
make it even simpler

cooling fan to put candle out.

candle out, lower priority threads take over and continue navigating.

# Questions

most of the changes to the kernel have made it into the upstream
kernel sources. latest upstream kernel should be just fine.

I2C problems, wiring into ARM board.

Is it stuck, wheels slipping, or has it slowed down because it is on a ramp?

sensors, what sort of sonar is used? simple transmitter and receiver,
prepackaged for hobbyist.

sensor boards, can code be remotely updated on the sensor boards?
Yes, as easy as reprogramming the robot. Simple 4 line programming,
open source program.
