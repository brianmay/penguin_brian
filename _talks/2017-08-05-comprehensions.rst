---
layout: talk
title: Comprehensible Comprehensions
conference: /conferences/2017/08/03/PyConAu2017/
speaker: Trey Hunner
begin: 2017-08-05 10:45
---

Comprehensible Comprehensions
=============================

Assumptions:

* Know how for loops work.
* You are not a fan of list comprehensions.

iterable:

* anything you can iterate over.

generator:

* lazy iterable.

List comprehensions
-------------------

* Turn one list into another list.
* Making new list into old list more common in Python.
* Often copy old list to new list to avoid mutating old list.
* Contains some information as for loop.
* Are more specific about intent of code then for loop.

Complaint
---------

* Makes readable for loops unreadable.

  * Comprehensions often written on one line. Very condensed. No white space.
  * Operation, Loop, Condition. Don't have to be on one line:

    .. code-block:: python

       squared_odds = [
         n ** 2
         for n in numbers
         if n %2 == 1
       ]

  * Should always start by writing comprehension on multiple lines.

Generator expressions
---------------------

* If you are only going to loop over result once, you should use a generator
  expression instead of a list comprehension.

  .. code-block:: python

     squared_numbers = (n ** 2 for n in numbers)

* Generators are lazy, only generate on demand.
* Generators are one time only. Can only loop over once. Single use.

When not to use comprehensions
------------------------------
* Only for turning one list into another list.
* Do not have side effects, e.g. print, in comprehension.
* When dict/list constructors can be used instead.
* When not changing or filtering anything.
