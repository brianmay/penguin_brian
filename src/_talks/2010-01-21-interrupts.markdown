---
layout: talk
title: Interrupts considered harmful
conference: /conferences/2010/01/23/LCA2010/
speaker: Peter Chubb
begin: 2010-01-21 16:45
---
RT-PREEMPT pach gave bad performance and bad lantancy.

History

* All IO originally programmed. Poll until ready. Everything slow anyway.
* Desire foor multitasking. Do stuff while waiting for slow IO devices to complete.
* IO port tells processor: "Hay! Look at me! I am data for you."
* Interrupts steal time from the processor when it is doing stuff.

Traditional implementation, interrupts can steal 100% of time from processor,
including real time tasks. On multicore systemyou can do things on other processors
still.

Soft IRQ, lower priority interrupt handler. Some ISRs defer work to soft
IRQs.

Threaded interrupts. Microkernels, etc. Instead of stealing time, you schedulea
kpernel thread that waits for interrupt and carries on. Threads are preemptable.
Threads can have priorities against any other thread in the system. This is
good. Threads can sleep. No longer any need for deferred work, except special
cases.  Thread is much easier to program.

Linux can use threaded ISRs. Doesn't for e1000. RT-PREEMPT patch forces
threaded ISRs everywhere. Everything is preemptable.

Standard Linux performance bad. RT-PREEMPT performance even worse. 50ms latency
found, where there should be no latency.

UDP echo not getting enough time. softIRQ taking too much time.

Make echo a real time task. More then double our output. Still not ideal.
If you are going to drop packets they should be dropped early before you
do a lot of work of them.

Restrict work in SoftIRQ. Throughput is much better.

Safety feature in Linux. The machine stalls for 50ms every second. Run
timeshare process. If there isn't one, run idle task 50ms. This means you can
get into a system even if 100% cpu used by real-time priority tasks.

Change e1000 driver to request threaded interrupt handler, etc. cycletest
is only real time task.

Needs more work to clean up patches. More problems need solving.

Deprioritise interrupt handler, resulting in more packets being dropped, and
performance of computer isn't badly affected as a result. For example, if
computer is hit by UDP DOS attack.

Packets dropped at card level before any processing is done.
