---
layout: page
title: Programming
description: I am a skilled in a range of computer programming languages.
---

I have many years experience in computer programming.

## Motorola - 1990s

I had a job rewriting the Fortran code used for testing radios to a C++ based
Windows GUI application. This was some experience for me, although I had no
idea what I was doing or how to write good object orientated code. Further
more, limitations in the libraries used to interface with the GPIO bus, for
communication with the test equipment didn't help.

On such problem occurred due to my practise of keeping memory buffers allocated
as small as possible. This is considered good programming practise.
Unfortunately, the code for reading data from external devices didn't allow for
specifying a maximum buffer size, so would keep reading data until the device
had finished, hence overwriting the end of my buffer, and overwriting random
memory values past the end of the buffer (such as the next stack frame).

This proved very difficult to diagnose. It meant occasionally the test devices
would return an unexpected value, which would cause incorrect behaviour in the
application some time after the error occurred. Eventually I wrote a function
that would test the string size after every potentially dangerous operation,
and have it abort the application immediately if the string size was too long
for the buffer. This helped significantly.

## Education - 1990s

After my work at Motorola, I concentrated my efforts at VCE years 11 and 12,
and then my Robotics and Digital Systems. I also did first year Informations
Systems course, which I found very useful in later years on good design for
Databases.

## 2000s

Through this time period I concentrated on my [system
administration]({{ site.baseurl }}/skills/sysadmin/) skills.

## Lintory - Late 2000s

In my work at VPAC I often ended up getting all the deprecated laptops that
nobody wanted any more. I often gave them new life by installing Debian Linux
on to them. "What do you mean it was slow? It runs Linux fine!" One of these
laptops had a tutorial getting started with Django on the desktop. I was
hooked. I started writing my own Django application,
[Lintory](https://github.com/vpac/lintory). This project was designed to keep
track of staff assets at VPAC, including hardware and software. Most off the
shelve solutions could not keep track of different types of licenses (e.g.
commercial vs non-commercial use), and Lintory was designed to solve this
problem.  This project is still available on GitHUB, although I haven't touched
it in years.

Eventually through my work with Lintory I realized that my code was actually
Python code, and I was now a Python programmer.

For more information on my sysadmin duties at VPAC, see my [system
administration]({{ site.baseurl }}/skills/sysadmin/) page.

## Karaage - 2010s

Around the same time I started work on Lintory, a coworker started work on a
project called Karaage.  Previously every supercomputer in the cluster had its
own user database that had to be manually maintained in NIS (aka. Yellow Pages).
This was tedious, very manual, and prone to error. As an example, when I
started at VPAC I was given the username of brian, which clashed with somebody
who had the same username on one of the cluster systems.

Karaage was a Django based system that was designed to help management of
cluster users. It was never designed from the ground up, it was a pet project
to solve a real problem we had at the time. Gradually I become more familiar
with Karaage and helped install it at VLSCI. When the lead developer left VPAC,
I ended up with full responsibility for maintaining it.

This was good and bad. It was good in that I was able to start cleaning up old
legacy code, and attempt to turn it into more of a maintainable professional
code base. Code that has automatic CI style testing and Gerrit to manage
code changes. Removed nasty hacks to make the code more easy to understand.

I also installed Karaage at sites right across Australia, including
Sydney, Perth and even Darwin. It was not so good in that nobody - including
my boss - had a good understanding of what I did with my time. We also had the
problem that while we installed Karaage to sites across Australia, we didn't
get any maintenance contracts with these organisations. So I was unable to
fix known bugs in existing installations. It also meant VPAC wasn't earning
a direct income from the work I was doing, despite Karaage being an essential
component of the work we were doing.

Unfortunately, a number of these projects to set up supercomputers at external
sites where badly mismanaged. When somebody realized we should be working out
how much these projects were costing us, in terms on employee hours, it was
found we were losing money on them. Money we could not afford to loose. Then in
2015, finances suddenly found they had made an error and didn't have enough
money to continue operations. As my work was not producing any direct income,
they made me redundant.

VPAC (aka V3 Alliance) closed operations at the end of 2015. The acting CEO
at the time said V3 was making a profit at the time, and he didn't understand
why the board decided to close the company down.

## Karaage - post-VPAC

After I was made redundant at VPAC, I gave a talk at PyCon AU 2015 on
[Karaage Gardening]({{ site.baseurl }}/talks/2015-07-31-karaage/).

Since I left VPAC I have continued to improve Karaage, as part of my casual
work with University of Melbourne. It now is deployed through Docker
containers, and I have removed legacy code that was no longer required.

In the future I would like to move Karaage from a monolithic design to a more
secure modular micro services based design.

Karaage now has its own [website](https://karaage-cluster.github.io/).

## SPUD - 2010s

SPUD is a photo database that uses Python, Django, REST, Angular, TypeScript,
and I use it to manage my growing collection of photos. Unfortunately my time
is limited, and I am unable to give it the attention it deserves.

In the past I have given talks of SPUD at local user group meetings, although
unfortunately these were not recorded.

## Robotica - 2010s

Robotica is a series of Raspberry Pis throughout the house running Python3
AysncIO based code to make annoucements and otherwise try to assist looking
after Autistic kids.

Talk at LCA2018 on [Robotica]({{ site.baseurl }}/talks/2018-01-26-robotica/).

## MCA - 2010s

I now have a new personal project, MCA (misleading connection advisory),
which helps make connections between services. I have encountered two problems
with existing planners:

* They don't use real time information. So they are advise you to make
  connections that you can't possibly meet.
* They tend to be inflexible if transit problems occur. For example, if there
  are no trains past Ringwood on the Belgrave line, there are several alternative
  options available, but it isn't possible to tell the planners not to use
  trains between Ringwood and Belgrave when coming up with a solution.

As an extra bonus, this project is written in Elixir, and uses Phoenix, so
I am now learning to program in a functional programming language.

## Personal projects - 2010s

* My [Robotica](https://github.com/brianmay/robotica/) uses Python and Asyncio.
* My [Robotica remote](https://github.com/brianmay/robotica/) uses Micropython, asyncio and OpenSCAD for 3d designs.
* My [photo database backend](https://github.com/brianmay/spud/) uses Python and Django.
* My [photo database client](https://github.com/brianmay/spud-client/) used Angular and Typescript.
* My [misleading connection planner](https://github.com/brianmay/mca/) for PTV uses Elxir.
* Plus many others.

Please see a full list of my [current projects]({{ site.baseurl }}/projects/).
