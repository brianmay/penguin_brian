---
layout: talk
title: Debian security
meeting: /conferences/2008/02/02/LCA2008/
speaker: Russell Coker
begin: 2008-01-28 13:30
---
SE-Linux

Strict policy currently has issues in Debian that need to be fixed. eg. changing
a password will lock users outside the system, as /etc/passwd is given the shadow_t
type. Fixing this is a simple patch.

People don't like security, they work against it. For example, when
an application doesn't work, the suggested fix is to permanently
turn off SE-Linux, even when SE-Linux wasn't causing the problem.

Need more people contributing to security in Linux.

libc6 maintainer refused patch for silly behaviour in libc6 without good
reason. libc6 opens utmp file in R/W mode, and if that fails it will open it in
RO mode, even though, RO mode is required. This produces misleading SE-Linux
messages, as it would appear that the application requires read write access to
the file. An experienced person is needed to tell that read-only access is
sufficient.

<http://etbe.coker.com.au/2008/01/28/lca-2008-security-miniconf/>
