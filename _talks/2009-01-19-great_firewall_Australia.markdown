---
layout: talk
title: Great Firewall of Australia
conference: /conferences/2009/01/24/LCA2009/
speaker: Aeriana Lee
begin: 2009-01-19 14:20
---
Bringing you censored Internet with...

...Broadband prices at dialup speeds.

Mandatory, cannot opt out.

1st Tier, safe for Children. What is the definition of "Children". 13 year old
requirements not the same as a 17 year old.

2nd Tier, no illegal content.

Look at Europe, with the problems they have with their voluntarily system.

* wikipedia. One webpage on wikipedia blocked. This resulted in everyone from UK being
proxied through one IP address. Anonymous edits were blocked for all of UK.

* Internet Archive blocked in England. Not as wide spread as above.

Putting filters at ISP level is different from adding filters for corporate companies.

## Implementation

Block DNS lookups. Easy to implement. Fast. Easy to work around, by editing /etc/hosts.

Dynamic analysis. DPI. Very expensive, large amounts of processing. Defeated by encryption.

Reduce size of MTU, smaller packets, users can avoid keyword search matching keywords.

Throughput depends on the patterns used: how many and how precise the pattern
is specified.

Scanning encrypted content like building a 4 lane highway up Mount Everest.

Filtering software could substitute certificate of server with its own
certificate. Filtering appliance would need certificate with valid CN and valid
signature from valid CA.

Government could obtain intermediate CA certificate from trusted root CA. More
technical people could use certificate blacklists to black list these
certificates.

Really bad for privacy issues. Good target for somebody to break into.

Australian gatekeeper certificate already in IE.

EFA, getup, etc. Working with each other.

No Human Rights charter in Australia. No law against filtering at ISP level. It
already happens at some ISPs. This is just another level of filtering.

About control of copyright material.
