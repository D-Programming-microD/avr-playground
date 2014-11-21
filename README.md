AVR D playground library
======================

About
----

This repository contains some unfinished ideas for D on microcontrollers.
Although testing is done on AVR 8bit controllers (ATMEGA168PA) most
of these ideas should be easily portable to other architectures.

Building
-------

Make sure that [microDRT](https://github.com/D-Programming-microD/microDRT) is in the parent folder of this directory, then
run `build.sh`. Note that `build.sh` also flashes the newly built executable
if an AVRISP mkII programmer is connected.

Compiler
-------
Ready to use packages for avr-gdc are only available for Arch Linux right
now and can be obtained from the [AUR](https://aur.archlinux.org/packages/avr-gdc/).
