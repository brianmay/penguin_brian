---
layout: post
title: Email forwarders
date: 2011-04-20 13:18:52 +1000
tags: computers Linux
---

Traditionally, Unix daemons communicate to the sysadmin in one of two ways.
Either by logging something to a file, or by emailing the user. This has meant
every system requires a MTA to be installed, configured, and working. However,
a full scale MTA is often an overkill for many systems, e.g. why should a web
server require a MTA that can do everything possible when all that is required
is to forward the output of cron jobs to a system admin? There is no need to
deliver mail locally, and no need to queue mail either, your mail server can do
that. To have a complicated solution for a simple problem means that things are
more likely to break and/or create security issues.

There are a number of lightweight solutions in Debian, unfortunately, they all
seem to implement a different subset of the requirements, they tend to be buggy
and ill-maintained too.

Requirements:

1. Forward all email to remote SMTP host.
2. Ability to work with mail from system daemons, such as daemon, that may not be fully qualified email addresses.
3. Needs to log every transaction.
4. IPv6 support.

Optional extras:

1. May spool email in case remote SMTP host is off-line.
2. Redirect all local email to a given remote user.
3. Rewrite the envelope sender address, so bounces will go somewhere sane.

## ssmtp

Looks very good at initial glance. Unfortunately, the code is buggy
and currupts messages, e.g.  {% bts 508759 %}, {% bts 584162 %} and
{% bts 279737 %}. I seem to recall having other problems random with
ssmtp, but never got around to filling bug reports.

## esmtp

Not related to the ESMTP protocol standard.

A very good alternative to ssmtp. Unfortunately, esmtp falls down because it
doesn't have any support for logging what is happening {% bts 623293 %}. So
if somebody complains that you are sending SPAM, even if this is unlikely, you
can't prove otherwise. Especially if you don't have access to the logs on the
smtp host for any number of reasons.

## msmtp

msmtp also looks very good. Unfortunately it doesn't expand the recipient
address when there is no domain {% bts 578017 %} and {% bts 623294 %}
making it unusable for forwarding admin emails. Unless you use the
[hackish](http://blog.mybox.ro/2010/06/09/how-to-make-cron-send-remote-email-without-a-mta-on-the-server/)
wrapper shell script for supporting aliases

## nullmailer

This one has a queue, so if the mail can't be sent immediately (e.g. the mail
server is offline), it will retry. It also has an adminuser so all email to the
local system can get redirected to this remote email account. Very nice. The
first criticism is that it isn't useful for systems which end users might
have access to, because all the email will come to you instead.

Unfortunately, nullmailer has some bugs too, some of which look nasty e.g.

* errors parsing data recipients and headers headers:
{% bts 589899 %}, {% bts 540758 %}, {% bts 188251 %};
* problems sending outgoing emails {% bts 583564 %},
{% bts 329192 %}, {% bts 359994 %}, {% bts 375380 %};
* breaks conventional unix standards {% bts 329970 %}.

Nullmailer is the only program I noticed that has broken IPv6 support {% bts 605899 %}.

## Conclusion

None of these packages does what I want. I have tried submitting bug reports,
but unfortunately, there is little interest in fixing the problems either. So
the best solution might be to install a full blown MTA such as postfix, and
turn off functions I don't need (e.g. incoming SMTP support).
