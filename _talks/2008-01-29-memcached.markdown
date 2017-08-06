---
layout: talk
title: Memcache
conference: /conferences/2008/02/02/LCA2008/
speaker: Brenda
begin: 2008-01-29 11:55
---
Keeping data in memory.

Volatile place to keep data in memory for a short time.

It is a daemon, server, that you query.

Free, open source. BSD license.

## How it works

1. install and run it
2. connect, put values in, retrieve them.

PHP5 support.

Supports complicated objects, arrays, etc.

Set expiry time what putting data in.

Can compress in memory.

## What to store

* Database searches
* Generated website content
* Web service lookups
* LDAP data

Store results for limited time, so if same request generated multiple
times, no need to conduct search each time.

## Who uses it?

* Live Journal
* Wikipedia
* Twitter

## Installation

apt-get install memcache

clients: PHP, Python, PHP, Ruby, Java, C#, Postgres.

Storage engine for Mysql. Store data in mysql, and it goes
into memcache.

## Usage

If in memcache use it, else get data from database and inseart into memcache.

$memc->inc('value') - increment value

Read stats - hits vs misses.

Problem: as soon as content expires, lots of process will decide data
isn't in cache simultanouesly.

Solution: Set a lock, so only one process does the check at the same time.

Non-memcache solution required for locks.

## Remember

Complete volatile, won't with stand reboots.

Connections may fail to work.

memcache not master storage for data, it may get lost.

1 megabyte limit per item.

## Where to use it?

Memory hungry, cpu lite.

Web servers are CPU hungry and memory lite.

Databases memory hungry CPU lite.

So run memcache on website.

run on localhost only, for security reasons.

Keys are global with everything else on server.

Data Integrity: Not existant, be prepared for anything to come out.

Transparent fail over: When one server fails, client can connect to another.

Invalidate on save: When data changes, invalidate the data in memcache. What
can go wrong?

## Ideas for usage

Communicate between layers. Example, Between PHP and Java.

Store data here instead of /tmp.

## Competitors

* Tugela: Same thing, but data is written to disk, and will survive a reboot.
* Couch DB???
* Lucene
* eAccelerator - memcache like thing and locks stuff built in.

Editors comment: memcache doesn't support communication via Unix sockets,
meaning any process running on the computer can access or change any value
without bounds. Maybe it would be better to support this, and maybe even run a
seperate memcache daemon for every virtual website?  memcache has small
overhead, so this should be possible, and would prevent accidental collisions
in name space too.
