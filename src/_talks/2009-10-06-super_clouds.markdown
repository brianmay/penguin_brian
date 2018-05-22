---
layout: talk
title: HPC with Clouds
conference: /conferences/2010/02/02/LUV/
speaker: unknown
begin: 2009-10-06 19:00
---
Particle physics - Belle and Bell II. Bang particles together at high speed, and look at pieces.

Problems with standard model. 3 projects to investigate.

Storage is 2 PetaBytes of data, currently. Requirements will go up 60 PetaBytes/year.

## Cloud Computering

Charged by hour on how long VM is up, charged based on storage used, etc. Aimed at people running
web servers and data servers. Lower cost then dedicated facilities.

Very useful for peak demand. Use grid to supply base line, and cloud to supply peak demand capacity.

Value of cluster decreases with time. Sad old clusters nobody wants to use.
Cloud increases value with time.

Cloud computering cheap compared with cluster.

Bad features

* Vendor lock in.

Amazon EC2

* AMI - machine.
* S3 - storage.
* SQS - queuing.

## Future

Require 20,000 to 120,000 cores. Not sure if Amazon can scale and provide this
many. Need to transfer data at least 600 MByte/seconds.

http://www.newservers.com/

* Alternative.
* Cheaper.
* Can they scale??

Nimbus and Eucalyptus

* Open source efforts.

Clouds may not scale for parallel jobs very well. Our jobs aren't
parallel in nature.

Amazon may be trying to make money from data transfer. They may lose money if not
much data is transferred and many CPUs are used.
