---
layout: talk
title: "Forklifting Django: Migrating A Complex Django App To Kubernetes"
conference: /conferences/2019/08/02/PyConAu2019/
speaker: Noah Kantrowitz
begin: 2019-08-02 11:50
talk_url: "https://2019.pycon-au.org/talks/forklifting-django-migrating-a-complex-django-app-to-kubernetes"
---

Deployment of applications is hard.

Where to put Django migrations? Don't won't to run multiple Django
migrations at the same time.

Helm: Kubernetes package manager

* Defacto default.
* Limited testing tools.

Tiller. Server side component in Helm 2. Will be removed in Helm 3.

* Has lots of security issues.
* Anybody that can talk to Tiller has root privileges to entire Kubernetes
cluster.

Watches

* Subscribe to changes to Kubernetes objects.

Procedural design

* List of all steps.

Convergent systems

* Don't list steps. Supply desired state. Nothing happens if desired
state already active.

Typically need to rewrite procedural system to convergent system when
moving to Kubernetes.

Convergent means you don't have to write for every possible combination
of start state.

Celerybeat

* Stateful process, only want to run 1 copy or you get duplicate tasks being run.
* StatefulSet, requires persistent storage for storing state.
* BeatX - celery - moves stateful storage into Redis. Can run multiple copies.

Database

* Write custom PostgresDatabase type.

Drift gitops

* Git is your only source of truth.
* Automation sees change to required branch, and makes required change.
* Use ArgoCD
