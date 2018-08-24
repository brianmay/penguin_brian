---
layout: talk
title: Writing fast and efficient MicroPython
conference: /conferences/2018/08/24/PyConAu2018/
speaker: Damien George
begin: 2018-01-24 10:30
---

Global variables slow.
Local variables fast.

Heap. Avoid use of heap. Sore core constructs don't use heap, some do.

Use functions and local variables as opposed to global variables.

Prefer longer expressions then splitting up.

Use built in functions where possible.

Constant equations will be optimized.

Don't use * or ** args if concerns about speed or memory usage.

Use ``mpy-cross`` to produce mpy files.

Ultimate: Freeze scripts into firmware.

Memory allocation slow.
