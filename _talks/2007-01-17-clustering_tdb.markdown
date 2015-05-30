---
layout: talk
title: Clustering tdb; A little database meets big iron
meeting: /conferences/2007/01/20/LCA2007/
speaker: Andrew Tridgell
begin: 2007-01-17 11:50
---
CTDB - clustered TDB

Clustered Samba systems

Current - add mode nodes - slower

2 nodes should be faster then 1.

15 nodes needed to be faster then 1.

cifs = coherent

Behaviour exactly the same for multinode cluster as for single node system.

No shortcuts (unlike NFSv2 and v3).

Samba database sever:

* mysql backend tdb

databases relatively slow

* filesystem = database

TDB

* very simple
* very fast - 100K/second operations
* byte range locking

Clustered databases too slow

tdb database running over clustered filesystem too slow.

* robustness is high priority.

Robustness not a criteria for Samba databases 0 can look data.

If node lost, only data lost in data associated with node, and clients to node.

* tdb stored in memory.
* No data redundancy

Remote locking is evil, may case cascading locking affect

* don't hold lock when performing network operation.

* send function/code to node that holds data

encryption slow

LMASTER -> DMASTER

assume same version of Samba on all clusters processors.
