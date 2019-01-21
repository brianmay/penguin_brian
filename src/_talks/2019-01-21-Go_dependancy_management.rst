---
layout: talk
title: "What the dep is going on with Go dependency management?"
conference: /conferences/2019/01/21/LCA2019/
speaker: Adam Harvey
begin: 2019-01-21 11:35
---

Glide = Cargo + NPM + PIP + ...

Too many alternative package managers.

Solution: dep

Solution: vgo

Working out dependency management is NP complete problem and slow.

Minimal package versioning:

* Minimal algorithm.
* Picks older versions of software.
* Stores cryptographic hash of dependency.
* Every version change considered breaking change. semver not supported.
