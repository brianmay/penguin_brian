---
layout: talk
title: Python's Dark Corners
conference: /conferences/2011/08/21/PyConAu2011/
speaker: Peter Lovett
begin: 2011-08-20 13:10
desc_url: https://pycon-au.org/2011/conference/schedule/event/18/
---
Mostly Python 2.x, some Python 3.x tips. Some Python 2.x stuff fixed
in Python 3.x

Aim: Avoid falling into pitfalls.

Not a lot of dark corners in Python. Not compared with C, C++.

Python is deceptive. Great language for professional programmers.

I love C. Have made lots of money from C.

Whitespace

* Love whitespace, hate tabs.
* Ban tabs. Use Python aware IDE.
* Configure editor to insert 4 spaces when you push tab.
* python -t, warn inconsitant spaces.
* Mixing of tabs is a problem. 3 spaces? 4 spaces? 8 spaces?

References

* names/references not variables
* slices important
* id(name)
* copy list: 
  * f = a[:]
  * f = list(a)
* everything is an object
* everything can be referenced.
* references to functions or class names
* str = 'abc'
  * just redefined str
  * str is not a reserved word
  * import \__builtin__
  * str = \__builtin__.str
* False , True = True, False
  * print True
  * illegal in Python 3. Is reserved word.
* None = 77
  * Not in 2.7 or above. Is reserved word.

Variables

* easy to create names accidentally
* pylint, pychecker, etc to check code

Name space rules

* local vs global variables
* scope is where variable is declared
* Modify variable rebinds it, possibly to different scope. May hide global
variable in local scope before variable rebind.
* global keyword
* Move main line into seperate function, so variables aren't global.

Funky Syntax

* if you_need_to_save_a_line: don't do this
* please don't do this; then this
* a = a.reverse() returns None
* s = "Spam"; s.reverse();  error can't change strings
* s[::-1] reverses string, odd - not dark
* split and join. ",".join(list)
* printing to stderr. print >> sys.stderr, s

Types

* Object can change their type. No they can't.
* Use duck typing, not RTTl. If it looks like a duck, sounds like a duck, it is a duck.
* tuppance: (5,)
* floating point: 1.1 + 1.1 + 1.1 - 3.3 not 0. Close. Decimal class.
* ++++++++++n same as ++n same as +n
* n++ error.
* n =+ 1 instead of n +1 1
* n = 0 < x == y clever not good.

Default arguments

* def fs(x=[]): print x
* keeps the old value
* static local variable

The library

* which library am I support to use?
* HTTP?
* sqlite?
* argument parsing?
* Py3k is better.
* Don't use deprecated modules

Concurrency

* dark corner
* GIL - CPython
* Multicore / multithreaded
