---
layout: talk
title: Real time document collaboration
meeting: /conferences/2010/02/02/LUV/
speaker: various
begin: 2008-04-01 19:00
---
Martin Sevior  
School of Physics  
University of Melbourne  
Freelance abiword Hacker

Real time collaboration between any number of sessions running
on different computers around the world.

Appliations: schools, universities, businesses, journalists, OLPC.

Can operate without a server and without locking.

Nobody ever stopped from typing. Any errors and we correct later.
Collisions and we correct later.

## Abiword model

Document Model: PieceTable is a double linked list containing text and
formatting (Text), embedded objects (Object), and paragraph descriptors
(Strux).

Views: for looking at document, greating something interesting, e.g.
screen view or printout.

ChangeRecords (CR): emitted by each PieceTable as it is
created destroyed or changed.

AlbCollab: serialises list of changes (ChangeRecords) and squirts across to
remote site.

## Core principles

Documents must always be identical

Users should not be surprised, eg. undo should undo last
change local user made.

Designed to work without a server. Direct connections without
locking.

Transports: XMPP (Jabber), TCP connections, Telepathy (OLPC).

## Issues

Internet lag

* Can loose synchronisation because of finite propagation time.
* InsertText, at 12, 'e' - positions given by absolute character numbers.
* Record the CR number Position, and send with CR number sent to remote.
Each end adjusts offsets as required by difference in CR number.
* Pairwise connection: master node to keep track of changes users make.
* If master dies, another master takes its place.
* Local CR number may be different to remote CR number.

Undo/Redo

* Pressing undo should only undo your changes.
* AbiWord records all the CRs applied to the model.
* Undo shouldn't undo changes made remotely.
* Remote person may be changing other page entirely.
* Need to tag remote CR and record their adjustments.
* If remote user changes your text, you can't undo it.

Complex operations

* conglomeration of smaller operations
* shouldn't be interrupted
* Glue operations between GLOBs together on reception and do them
all together. If network failure, nothing gets processed. Atomic
transactions.

Collisions

* One user types "X" another user types "Y" at same point.
* Collision. Fight to the death.
* Master document tells the remote to undo until we're back in synch.
Remote acknowledges.
* Try and fix it and let user work out what is going on.
* First change received wins.

## Embeddable AbiWord

GtkWidget

* python and C# bindings
* AbiCollab built in

basis of OLPC Write, which has radically different UI.

## Conclusion

<http://abicollab.net/>

The code works and is being widely deployed.

## Questions:

Somebody drops offline while editing document?

* Need to manually merge changes.
* abicollab.net will always work.

Only need to be wrong once in handling changes, and it breaks badly.
Getting all the changes right is difficult.


Abiword and ODF?

* Very well.
* Silly mistakes in ODF?
* Image positions relative to page number. Problem for websites,
requires two passes.
