---
layout: talk
title: Infrastructure for User-Level Device Drivers in Linux 2.5
conference: /conferences/2004/01/17/LCA2004/
speaker: Peter Chubb
begin: 2004-01-15 13:45
---
85% bugs in kernel are driver bugs

API changes in kernel really fast

drivers are updated slower then rest of kernel

72 drivers currently marked as broken

drivers lack safety, can access all memory

most seg-violations will just kill that driver

* interrupt handlers may crash entire system
* or corrupt data stored on disk

authors:

* manufacturers
* owners of devices
* kernel hackers (best case)

must be done in C

locking, preemption, interface access, idioms

reboot cycle slow (UML?)

debuggers not available

kdb, kgdb, available for some kernels on some platforms via serial console

why can't you do interrupt processing in user mode interrupt handler?

* FAQ reason wrong, default kernel interrupt handler disables interrupts

kernel address space/kernel privilege

own address space/kernel privilege

client address space/kernel privilege

kernel address space/user privilege

own address space/user privilege

client address space/user privilege

user mode drivers

* easier development, e.g. python
* no reboots ... almost ... DMA excepted
* more robust
* more functional
* simpler as no need to be so robust
* do still need to understand hardware

user ABI changes slowly

* binary distribution of drivers possible
* no license issues
* normal package management

/proc/bug/pci

patch that allows nmap on I/O address space not yet in kernel

In development:

* interrupts
* DMA
* look back into kernel
* shared memory

Interrupts

* slow
* 10 microseconds response on 2.5 GHz machine; PCI specific
* communicate via signals, file handle/descriptor, ...
* when user mode process dies, automatically deregister
* fd = open("/proc/interrupts/58/irq", O_RDONLY);
* r = read(fd, &K, 1)  // wait for interrupt
* can drop root after open call
* extra context switch
* 2 microseconds per context switch

DMA

* write cache to DMA memory before write
* discard cache after DMA read
* convert virtual address space to physical address space
* devices --> IO MMU --> memory --> MMU --> CPU
* IO MMU introduces latency, therefore Linux bypasses it if it can
* setup_dma(devf, address, buffle handle, direction/read/write);

Howto

* libpci
* user_pci_open(,,,)
* driver_init(...)
* interrupt_thread(...)
* // do stuff
* usr_pci_allow_consistent(...)
* setup_dma(...)

bonnie results (not bonnie++?)

* page cache good at hiding latency

performance adequate for IDE

in kernel drivers suck for in kernel gigabit Ethernet

driver doesn't align payload; poor performance

shared interrupts in user space bad, no way to determine if/when user mode
handled the interrupt

TODO

* code cleanup
* MMIO support
* merge system calls, tear down DMA system call and setup DMA system call
* reliability tests
* more drivers
* more loopbacks for network drivers, etc
* user mode filesystems
* network drivers and performance measurement
