---
layout: talk
title: Building the Independent Wave
meeting: /conferences/2010/01/23/LCA2010/
speaker: James Parser
begin: 2010-01-18 11:00 Monday  
---
<https://wave.google.com/wave/?pli=1#minimized:nav,minimized:contact,minimized:search,restored:wave:googlewave.com!w%252Bq3Gwo7ZkGj7>

Independent Wave == IWave

## Servers

Four open source servers have been independantly created:

* FedOne
* Ruby On Sails
* PyGoWave
* Novell Pulse Wave.

### Fedone

* Not ready for production
* No user authentication
* No persistance
* console based

### Ruby of Sails

* written by 17 year old in US.
* Web based interface.
* Character by character interface.
* Wants to rewrite it to create own client/server interface.

### PyGoWave

* Django based.
* Started of at gadget tester.
* Internal operation transforms.
* Developing own client/server protocol.
* Will support federation.

### Novell Pulse Wave

* Closed source.
* Still awaiting for release.

## Clients

## QWave

* x-platform
* FedOne
* QT
* not production ready

### Pygowave-QT

* native client
* proof of concept

## Client/server protocol

Need a client/server protocol to attract people to using wave who do not live
in the web world.

Agents

* What do you do with malicious agents?
* Agents can be hosted remotely. As with FedOne.
* Agents can appear as another person. How can you tell if it is a bad bot or a bad person?
* Too many bad bots and people want use Wave.

## Standards

We need a well defined and accepted standard that is agreed on and used by clients and servers.

Standard needs to define way of telling agents apart from people.

## Missed opportunities

Reasons people can't use Wave:

* Privacy legislation
* Commercial confidentiality
* Infrastructure requirements

Idea wave server needs to take over email server. Replace SMTP, POP3, IMAP.

## E-Mail gateway

Dan Peterson: Very difficult to manage every use case. Otherwise we end up just
making Wave look like E-Mail. We invested a lot of code and time to do this,
but it encountered very hard problems, so project was put on hold. We
understand E-Mail is very important. We need to figure out a better way of
doing this.
