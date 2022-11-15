---
layout: post
title: Kubernetes
tags: kubernetes docker
---

# Kubernetes

## Hetzner VM

In 2018, a friend advised me that I should learn about Kubernetes. So I created
some Debian VMs on [Hetzner](https://www.hetzner.com/), installed kubeadm, and
installed some websites.

Easy right? Boy was I naive.

A number of months went by, and I didn't look at the cluster. Then I noticed I
was several major revisions behind in Kubernetes. Just do an `apt-get
dist-upgrade` right? Wrong.

After getting into a complete and utter mess, I realised I had to downgrade to
where I was before, and then upgrade using a manual process one release at a
time.

## Managed instances

Because I obviously didn't know what I was doing, and didn't exactly trust my
cluster, I always thought I should use a managed Kubernetes instance. But I
felt they were too expensive.

In 2020 when I attempted to upgrade Kubernetes again, and it was a total
disaster. The upgrade appeared to work, but then I found nothing was working.
Instead of trying to fix the mess, I moved to the Google cloud platform. This
lasted for several months, when I found Linode had managed instances for
cheaper, so I moved to them instead.

Months later, I found I was still being charged for storage space on Google
Cloud, because I failed to ensure it was deleted. Argghh!

## Personal cluster

It was in 2019, I started creating my own personal Kubernetes cluster. I didn't
want to use numerous servers, that would cost too much in electricity. I didn't
want to use Raspberry Pi's either, because Kubernetes works best with an Intel
platform. So I purchased 9 Latte Pandas, installed Debian on them.

I also set up a file server, running TrueNAS, so that I could mount storage
using NFS on the clusters, where required.

I took two for other uses (1 for DNS server and 1 for FreeSwitch VOIP server),
and uses the other seven to create a 3 master node + 4 worker node cluster. I
also eventually got IPv6 working on cluster, IPv6 support was brand new at the
time.

After a while, I noticed that my Elixir processes talk over 1 minute to start.
In the meantime, new pods would frequently fail health checks and result in
Kubernetes killing the pod and restarting it. I have no idea why it takes
Elixir processes so long to start, they seem OK after starting, but I had to
make the health checks more generous in order to ensure these processes started
correctly.

I also had issues that I Docker support was being deprecated, and I had to
release the Docker runtime with another runtime. This hasn't as difficult as I
imagined. But I did encounter some challenges along the way, and filled some
bug also. I don't remember much of the process anymore.

After updating to Debian 10, I got to upgrading the 3rd master, when I suddenly
realised that the previous two masters were dead and not working correctly.
After I bit of panicking, I noticed that if I booted with the old kernel it
worked, but the new kernel it didn't work. I tried to get support for the
issue, and somewhere got the advice that I should post to stack overflow. I
posted here, and this promptly got deleted without good explanation. So I
continued using the old kernel.

Eventually I found a forum and posted a
[message](https://discuss.kubernetes.io/t/why-does-etcd-fail-with-debian-bullseye-kernel/19696/4).
Weeks went by without anyone being able to help. Eventually, somebody suggested
setting `unified_cgroup_hierarchy=0` on boot. That solved the problem. But was
only a workaround.

Months later, somebody else [researched](https://gjhenrique.com/cgroups-k8s/)
the problem, and found a better solution. Turns out when I had migrated from
Docker to containerd containers, I had no idea how to tell it to use systemd
cgroup support correctly, and this is what broke it.

Somewhere along the line, I wrote a script to automatically do the upgrade
steps. This has been a huge help.

I used a tool called [Keel](https://keel.sh/) to automatically receive events
from CI and deploy updated images. Unfortunately, as much as I like keel, it is
pretty much dead upstream. The last release has over 2 years ago, and it was an
RC (release candidate) release. I don't feel comfortable exposing my Kubernetes
API to the Internet in order to allow access by GitHub's CI, and this was a
good solution to that problem.

## Electronic Arts

In 2020, I was also able to get a job managing Kubernetes systems and
Electronic Arts. Which surprised me, I didn't think I would be experienced
enough. In fact, the first time I ever seriously tried to create a helm chart
was for the coding challenge for the job. I felt I didn't have a chance of
getting the job. I was really surprised when I got a phone call that same day
offering me the job.

As I got the job at the start of COVID-19, I haven't set foot in the office
once or met the people I work with in person.

Since then, I have become a lot more experienced at how Kubernetes operates.
Through the help of my colleague, Kenny, and my boss, Alex, I was able to learn
Kubernetes and how we used Kubernetes at EA relatively rapidly. Unfortunately,
since then, Kenny has been listed as officially missing, and there are concerns
for his well well-being. That is another story.

Though my work at Electronic Arts, I created a tool - helmci - written in rust
- for automatically deploying helm charts to the cluster. I hope to get
approval to publish this as open source one day.

## Future

I am starting to become less satisfied with my cluster at home. I don't really
need a 7 node cluster. Uptime isn't a serious concern. Scalability isn't really
required, as these sites are mostly internal use only. My time to maintain the
cluster was becoming more and more scarce. Plus, the electricity costs to run
the cluster are significant. And the cluster was hardwired for one VM, but my
IOT stuff needed access to my IOT VLAN. I didn't particularly want to maintain
another cluster for my other VLAN.

I have since moved the workload from my cluster to VMs running Docker
containers on my TrueNAS server. I upgraded the cluster to 1.25, to prove that
I can, but suspect I will decommission the cluster before long.

I miss the ability to push changes by having my CI send a message to keel that
would automatically trigger a deployment. But it seems like the Keel project is
dead, and may not be a great option anyway.

Instead, I have used [Watchtower](https://containrrr.dev/watchtower/) to check
for updates. But watch tower only supports polling to check for changes. And I
strongly suspect that my polling GitHub container repository too often, GitHub
was blocking my access. Which in turn may have been the reason why my brew
updates were consistently generating timeout errors.

I have changed the poll time to one hour, but sometimes it can take several
polls before it notices the image has been updated. I will have to try to
search for alternatives. Ideally for my own software, I would like to be able
to have the CI notify a process that an update is available, similar to before.

I also had the problem that watch tower decided to upgrade my home-assistant
instance one morning at 6:54:55 in the morning, about 5 seconds before
home-assistant was scheduled to receive an event it was to pass on to get me to
wake up. Result: The message went missing. So I might need to adjust the
schedule here.

I am still running my Linode Kubernetes cluster. But running a 3 node cluster
just for a low volume website seems overkill. Eventually I might get rid of
this also.

## Conclusion

My Kubernetes adventure has certainly been an experience. And while I am moving
away from Kubernetes for my personal stuff, I certainly don't regret having
tried it out for a while. However, I consider it overkill for my personal
stuff, and for my scale it is much easier to have direct access to the systems
involved.
