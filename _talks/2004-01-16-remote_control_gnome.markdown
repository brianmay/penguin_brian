---
layout: talk
title: Remove Control and Scripting of GNOME Applications with Python
meeting: /conferences/2004/01/17/LCA2004/
speaker: James Hendstridge
begin: 2004-01-16 11:00
---
Windows

* large applications expose document model via COM
* more applications, more power in what you can do
* can script applications in many different languages

Linux

* No standard like COM
* KDE DCOP
* Gnome CORBA, not in many applications
* Gnome Accessibility Frame work; can script any application

Accessibility Frame Work

* goal support accessibility tools, e.g. screen readers
* replace input or output functions of application
* generate key presses or manipulate controls in applications
* runs on top of CORBA
* Java and KDE support
* GTK --> GAIL | --> ATK --> AT-SPI   | --> CORBA | --> Accessibility tools
* Qt  --> KDE  |                      |           |    Accessibility register
* Swing          --> Java a11y bridge |           |
* Accessibility Register, keeps track of all applications

AT-SPI

* CORBA interface consists of Bonobo components
* AT-SPI Accessibility Tools Standard Programming Interface
* Bonobo takes ideas from COM
* Bonobo::Unknown, ref(), unref(), and queryInterface()
* activation, registry of all CORBA implementations on system
* query based on unique identifier
* query based on interfaces
* query based on custom properties
* if application is running, reference can be obtained
* otherwise the application/component can be started

pyorbit

* CORBA interface for python
* takes advantage of ORBit 2 new features

accessibility data model

* reference to accessibility registry
* getDesktop to get access to desktop in the login session
* accessible objects
  * name and description
  * role, window frame, scroll bar, etc
  * list of children
  * relationships to over accessibles
  * bunch of states of the accessible
* interfaces
  * action  clicking buttons, arbitrary actions
  * component widget
  * text and editable text
  * hypertext hyperlinks
  * image image information
  * selection; list box
  * stream retrieve in various formats
  * table; grid style layout
  * value, floating point value, e.g. scroll bar.
* Events
  * list to evens using registerGlobalEventListener()
  * focus
  * button
  * key press
  * state changed
  * text changed
  * notifyEvent(...)

Would be better to use CORBA, but application support is required

D-BUS might be another solution???

Bonobo not desktop neutral
