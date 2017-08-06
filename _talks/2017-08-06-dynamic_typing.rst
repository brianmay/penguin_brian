---
layout: talk
title: Gradual Typing in Python
meeting: /conferences/2017/08/03/PyConAu2017/
speaker: Tom Manderson
begin: 2017-08-06 10:45
---

Gradual Typing in Python
========================
Static types. Type is known before you *run* the program. Not necessarily
before you compile.

* PEP3107: Function annotations.
* PEP484: Type hints. Python 3.5, and backported to all Python 3.x
* Type hints will never become mandatory.
* PyCharm. Can autogenerate type annotations.
* Pytype. Has some semantics that I dislike.
* mypy. The type checker with community support.
* Jedi - not quite a type checker but worth a mention.
* typeshed - type bindings.
* Type Variance.

Types in the real world
-----------------------
mypy-extensions - documentation.

* Still beta status.
* Problems with SQLAlchemy.
* Import cycles. Use ``typing.TYPE_CHECKING``.
