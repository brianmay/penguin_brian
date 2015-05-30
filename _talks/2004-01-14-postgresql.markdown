---
layout: talk
title: Advanced PostgreSQL
meeting: /conferences/2004/01/17/LCA2004/
speaker: Gavin Sherry
begin: 2004-01-14 10:00
---
New features in 7.4

SQL99, SQL2000x

information\_schema, for portability.

information\_schema.tables - all tables in database which the use has access to.

holdable cursors, keep results on server. Fetch results as required.

updatable/insertable/delete from cursors, e.g.

* Cursor points to 5th transaction, what to update it. Current need
* to use normal UPDATE SQL query. Should be able to update based on position
* of cursor. Currently stored on disk in temp file, or store in memory.
* [concurrent updates by other user???]

Array handling.

* arrays vs foreign keys/external tables - when to use one vs the other?
* arrays - linear representation, update once per hour for instance.
* external table, many to one relationship, when data must be kept up-to-date.

Statement triggers.

* if a number of rows altered, trigger is only activated once.
* as distinct from rules which are modifications only, not select, for performance reasons.

full test indexing

* contrib, not in main PostgreSQL.
* removes common words, plurals, punctuation, and other pollutants.
* remove stop words.
* other languages supported.
* and/or/not operators supported
* SELECT * FROM finddoc("passage \| creak")

pg_autovacuum

* runs in background on given database, and monitors all tables in database.
* when parameter reaches user defined threshold, runs an automatic vacuum.
* shouldn't experience any delays.
* threshold and scaling factor.
* if quickly populating and deleting from table, will wait and then issue vacuum.
* requires row level statistics.
* penalty to store statistics is quite significant, but not a significant penalty for real word applications.
* setup test system to test penalty.
* only can connect to one instance of PostgreSQL.
* also in contrib, useful confirmed to work, not up to scratch yet to integrate into PostgreSQL back-end.
* is likely to get integrated, is on the todo list, no explicit plans yet.

commercial level asynchronous master-slace^h^h^h^h^h slave replication

* all code is proprietary for two years, then BSD.
* doesn't happen in real time, asynchronous.
* data written to master, then pushed out to slave some time afterwords.
* mostly written in Java.
* doesn't meet requirements for all applications.

database diff utility?

Enhancements in 7.4:

performance increases

* in-line functions
* SSL improved

IPv6

* data type
* listener

read-only transactions, can read database but not modify it.

* not a security feature; can override
* set transaction read only
* set transaction write

MIGRATION, INTEGRATION, XXX

user defined aggregates, written in C

user defined types

domains, wrap an existing type and add constraints

rules

* e.g. rule never delete data from master table, mark it as deleted instead,
* use a view to retrieve data from table that "is not deleted".
* use not_t to indicate data that is "deleted".
* rule: if somebody tries to delete data into comb_t, insert in not_t,
* rule: if somebody tries to insert data into comb_t, insert in t.

functions

* output of random function should not get cached.

foreign keys/primary keys

* CREATE TABLE TABLE1 ... primary key(name) ...
* CREATE TABLE TABLE2 ... ... REFERENCES table1(name)
* ensure tables are consistent
* cascaded deletes are easy

inheritance

* implemented similar to the object orientated programming (e.g., C++) sense.
* A  --> B
* when data inserted in B, data goes into A.
* B receives the layout structure of A
* subscriber --> esubscriber
* B inherits table structure from A not data from A
* multiple inheritance

sub queries

* EXCEPT
* NOT IN
* NOT EXISTS - faster for more complicated applications

explain SQL query

* EXPLAIN ANALYZE - show start times
* ANALYZE - optimise performance of table
* planner makes decisions for best query using data saved by analyse
* count(),max(),min() performance slow, needs to read in a lot of data
* use triggers to increment count on inserts and decrement count on deletes.

client side cache
