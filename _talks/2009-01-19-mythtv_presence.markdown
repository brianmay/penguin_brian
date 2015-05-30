---
layout: talk
title: Presence awareness for MythTV
meeting: /conferences/2009/01/24/LCA2009/
speaker: Jonathan Oxer
begin: 2009-01-19 16:00
---
TV Show "The Phone".
Next TV show: "SuperHouse".

Control devices through TV.

Jon's first rule of UI design:

* The best UI is no UI.
* Any place you can remove need to interact with system you make it better.
* e.g. suppressing screen saver when playing Movie.

How to make systems aware of a person being in front of it. TV should
automatically pause when you walk out of room.

Need to detect if person is in front of TV:

* Motion detector - people in front of TV tend to be still.
* IR beacon - cheap approach.
* Bluetooth to detect signal from Phone.
* glyph detection - using camera to detect geometric shapes.
* Facial recognition. Ideal solution. Camera at TV. Libraries in Linux
poor quality. Some Java code exists. Most ported from Windows. Many abandoned
projects. Some commercial projects. A suggestion was given.
* voice recognition???

Question: but what if you want to leave the TV and have the show continue? e.g.
you want to go and get a beer in the intro? Answer 1: do that before hand.
Answer 2: You automated house should automatically retrieve a beer for you.

Walk out of the lounge room and into the kitchen and have your TV show follow you.

* Use bookmarks to define book mark when user moves out and play from bookmark
when user moves in.
* Alternative use uPNP interface, supports playing at given time.

Question: How to not miss any of the show around time of pause?
Answer: How to start playing X seconds from when it was paused.

Question: how to resolve conflicts? What if multiple people in same room?
Answer: Priority scheme!
