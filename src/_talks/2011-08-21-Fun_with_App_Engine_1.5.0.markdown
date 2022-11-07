---
layout: talk
title: Fun with App Engine 1.5.0
conference: /conferences/2011/08/21/PyConAu2011/
speaker: Greg Darke
begin: 2011-08-21 11:40
desc_url: https://pycon-au.org/2011/conference/schedule/event/32/
video_url: https://www.youtube.com/watch?v=BMiCnYR8YYc
---
App Engine is a scalable platform that supports running user applications in Python Java and Go.

People hold the pager 24/7.

Asynchronous programming.

* Doing multiple things at the same time.
* Makes things faster.
* Threads: PEP-342 
* Callbacks. Twisted, asyncore, App Engine's UserRpc.
* Greenlets. Single OS thread. Write synchronous program.
* Tasklets. Using yeild statement. yield returns a value.

NDB recommended.
