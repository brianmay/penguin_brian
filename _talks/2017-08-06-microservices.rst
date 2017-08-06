---
layout: talk
title: Prototyping Python Microservices in Production
meeting: /conferences/2017/08/03/PyConAu2017/
speaker: Justin Akers
begin: 2017-08-06 12:05
---

Prototyping Python Microservices in Production
==============================================
Move fast with stable infra.

Microservices.

* Help move fast, with stable infrastructure.
* Composability.
* Just do one task. Can user service by contract without understanding
  implementation.
* Reliability.
* Mobility.
* Fault isolation - only if you do it properly.
* Test and deploy at your own pace.
* Ownership. Teams can own individual microservices.
* Safer deployment and testing.
* Scaling. Can move bottlenecks around. Doesn't actually help.
* Can back fire. Not as easy as it sounds.

Why not?

* Complexity.
* Logging and metrics diverge. Standard logging service. Standard metrics
  service. Constant checking required.
* Shift in bottlenecks.
* Overheads leads to waste.
* Management to aviod silos.
* Full stack testing is harder.
* Difficult to debug interactively.
* Disaster recovery is daunting.
* Not a silver bullet. Different colour.

Decouple cleanly. Apache Thrift.

* asyncio support coming soon.

Measuring and monitoring. Should be done from the start. Prometheus.

Should not hardcode IP addresses or domain names.

Shadowing. Duplicate requests to instances.
