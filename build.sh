#!/bin/sh
set -x

avr-gdc -Os -mmcu=atmega168pa -microD -I ../microDRT -I ./src -c src/test.d
avr-gcc -mmcu=atmega168pa -o test.elf test.o
avr-objcopy -j .text -j .data -O ihex test.elf test.hex
avrdude -p m168p -c avrispmkII -U flash:w:test.hex
