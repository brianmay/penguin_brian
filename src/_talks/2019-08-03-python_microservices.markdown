---
layout: talk
title: Lessons learned building Python microservices
conference: /conferences/2019/08/02/PyConAu2019/
speaker: Richard Jones
begin: 2019-08-03 10:30
talk_url: "https://2019.pycon-au.org/talks/lessons-learned-building-python-microservices"
---

What are microservices?

Spaghetti code with meatballs.

BFF pattern.

Interactions between services are verified with contracts.

Service is a Docker container:

* Apache
* WSGI
* Django
* Django rest framework

BFF - no connection to database.

git submodules

* Work on code and library API at the same time.
* Saves time not having to make a release of the library first.

Common tooling

* cookiecutter
* tox
* pytest + coverage
* flake8
* isort
* black
* prettier

Common tooling means it is possible to script changes that make
bulk changes accross services.

Testing

* Many different definitions of what a unit test is.
* What does end to end mean?
* Tests used to ensure confidence that refactors haven't broken anything.

PyCharm standard.

* Multi-cursor editing.

Inconsistencies crept in.

* One team found tox difficult to use. Replaced with bash script.
* Need to have regular consistant meetings to catch pain points early.

Contracts. No need for integration tests. We can verify consumer use of
API is valid. pacct. Pacman.

HTTP keepalive. Time to create new connections could exceed time to make
quick requests.

So many ways computers can fail.

* HTTP retries for certain types of HTTP errors. 502 errors. TCP errors.
* DB onnection retries.

DB connection health.

Physical screen per team that displays errors and error rates.

Django has its own ideas about databases. We can't store Django
database in our legacy database. Multiple databases in Django
not a good idea. These databases not required. Lots of warnings
"You have unapplied migrations." DRF likes to have django auth,
which wants a database. Some microservices we use a dummy sqlite
database.

Some databases we needed an id column. Django doesn't like multicolumn
primary keys.

Background process. Just add celery. Celery wants a message queue.
Redis wasn't around.

Investigation of hot spots that were slowing down request response time
significantly. Debug toolbar. Silk code profiling is good.

"201 duplicate queries over 4 seconds."

* Batched requests.
* Caching. `lru_cache`.


