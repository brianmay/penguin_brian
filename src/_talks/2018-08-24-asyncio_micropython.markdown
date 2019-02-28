---
layout: talk
title: Asyncio in (Micro)Python
conference: /conferences/2018/08/24/PyConAu2018/
speaker: Matt Trentini
begin: 2018-01-24 11:20
---
Coroutines. Ability to run things concurrently.

Yield points to relinquish control.

Event loop to schedule tasks.

Cooperative multitasking.

Concurrency. Not Parallelism. Won't help CPU bound tasks.

Event loop. "Not as magical as you might think,"

Wait! What about threads?

Synchronising threads difficult. Heavy, each one has its own stack. Heisenbugs.

Coroutines, high performance. No need to worry about control being transferred
when you are not expecting. Better fit for blocking tasks.

async/await keywords

aiohttp, curio, trio support asyncio.

threading support on micropython limited.

asyncio on micropython, about concurrency not performance.

Event loop has knowledge that could help reduce power usage.
