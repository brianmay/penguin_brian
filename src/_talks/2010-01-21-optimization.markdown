---
layout: talk
title: Simplicity Through Optimization
conference: /conferences/2010/01/23/LCA2010/
speaker: Paul McKenney
begin: 2010-01-21 15:45
---
1984, the year not the book.

BSD 2.8 on PDP-11/23

Why does optimization go bad?

Optimization strategy: Take advantage of special cases. The problem is that
special cases are special. Linux has to deal with general case. Handle 5
special cases, perhaps many more. Need to have dispatch code to select which
special case, this needs to be fast. Leads to coding bloat.

BSD 2.8 on PDP-11/23 new disk, some files were currupted, we moved these away
and forgot about them. Problem went away. What was happening? Currupted files
landed on bad part of disk? That is what we thought. Part of the block file was
mapped to the swap device. Swap partition has hardcoded into kernel source. In
three places in the kernel source. We had only found one of them.

Why does this matter?

Kernels are no expected to adapt to configuration and administration changes
dynamically without rebuilding.

PSP-11/23, if you tried to mount a floppy disk without a floppy disk in the
drive the kernel would panic.

## Example optimization gone bad

5 threads

Storing pointers is an atomic operation. Readers will either see old pointer
or new pointer, never currupt data.

RCU: Exclusion in time and space.

RCU is specialized and intended for special purposes, it is not a replacement
for locks.

Very simple implementation:

   #define rcu_read_lock()
   #define rcu_read_unlock()

Good performance, scalability, readtime latency, immune to dead lock, immune to
live lock. Very easy to understand this part.

If the readers are doing nothing, how does the writer know when they are done?
Through a schedule? Through garbage collection?

Only works if !CONFIG_PREEMPT. Cannot block or preempt while holding the
spinlock. So you declare it illegal to block or be preempted while in an
RCU read-side critical section.

What if CONFIG_PREEMPT is set?

   #define rcu_read_lock() preempt_disable()
   #define rcu_read_unlock() preempt_enable()

This worked well to start off with, until -rt (real time) patch system. Have
to be able to preempt the rcu readers. Context switches can occur in readers.

Solution? counters. Two pairs of counters, one for previous grace period, another for the net grace
period.

We don't want atomic operations or memory barriers. We don't want cache misses or branch mispredictions.

We want full CPU performance.

We don't want 5 independant implementations of RCU in the Linux kernel.

Keep all state of user level RCU implemtation.

Split the accounting. Track all running tasks. Only need to worry about blocked tasks inside
read critical sessions.

Per task counters.

Legitimate code bloatage.
