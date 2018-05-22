---
layout: talk
title: Docks, Bays, and Ports
conference: /conferences/2007/01/20/LCA2007/
speaker: Kristen Carlson Accardi, Intel
begin: 2007-01-18 09:00
---
Not just for oceans anymore.

<http://linuxfirmwarekit.org/>

Hotplug


ACPI

* ACPI routes events to driver
* 600+ pages in specification
* sends event for docking/undocking
* DSDT table
* Bus check event
* Device check event
* Eject event
* EJO/EJE - hotpluggable
* \_DCK - dock

DST

Cold docking

* supported in 2.6.20 (best)

Warm docking

* suspend to disk first may not be supported
* broken in fact

removable drive bay - supported in 2.6.21

User space notifications - after 2.6.18

UDEV rules

SATA - no special ACPI support required (unlike PATA)
