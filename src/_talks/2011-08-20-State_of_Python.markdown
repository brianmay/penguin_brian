---
layout: talk
title: State of Python
conference: /conferences/2011/08/21/PyConAu2011/
speaker: Senthil Kumaran
begin: 2011-08-20 10:20
desc_url: https://pycon-au.org/2011/conference/schedule/event/9/
video_url: https://www.youtube.com/watch?v=hx_rCN8pcfk
---
Python is a language reference.

CPython is just one of the implementations of Python.

PyPy, Jython, IronPython, CLPython.

* Implemented in C.
* Reference implementation.
* Web frame works don't have good Python 3 support. Once the frameworks
catch up, support is going to grow faster.
* WSGI spec needs to be worked out, main hurdle for the frameworks.

Jython

* Python interpretor written in Java.
* In development, but commits are irregular.
* Jython programs use Java classes instead of Python modules.
* Use if you are a Python programmer and want to lean Java.
* Truly multithreaded (no GIL) and Java Garbage collection.
* subclassing Java.
* Jython is slow. Supports frameworks including Django, Pylons.

IronPython

* .net implementation
* Supports silverlight.
* Use for corporate credibility, if your company uses .Net technologies.
* No GIL so multithreaded.

PyPy

* Python interpretor implemented in Python.
* Aims: Speed, efficiency, and 100% Cpython compatibility.
* JIT compiler.

Python implemented in LISP

GIL - remove using Software Transactional Memory.
