Pi Crust
========

This is a PCB that brings sanity to Raspberry Pi headers.

![Pi Crust PCB Layout](https://github.com/joewalnes/pi-crust/raw/master/images/pcb.png)

### This project is a work in progress. The board is not finished yet. ###

The [Raspberry Pi](http://www.raspberrypi.org/) is the new play toy for hackers. But interfacing
with peripherals is a bit awkward... this board aims to address that.


Features
--------

*   Really compact - sits *inside* the surface area of the Pi and adds less than 2mm to the height. If you have a case for your Pi, this board should fit inside it.
*   Pins are grouped together: GPIO, I2C, SPI, UART and power.
*   Every pin is clearly labelled.
*   Connections: 2 x SPI, 2 x I2C, 1 x UART, 8 x GPIO
*   Uses female headers instead of male headers - you can poke jumpers right in.
*   Lots of GND and 5V pins - you need those guys a lot. These pins are duplicated where it makes sense (e.g. within the UART, I2C and SPI groups).
*   Still exposes the original peripheral header pins, so you can also use those.
*   All thru-hole components - you can solder it yourself.
*   Cheap.


Non-Features
------------

There are no electronic components on the board.


Physical Design
---------------

The toughest part of this design was making it fit inside a Pi. The existing Pi headers
actually go all the way through the board and it sits approximately 2mm above the Pi (very close).
It's almost as if the board was part of the original board.

Because it sits so close to the Pi, care has been taken to ensure that any thru-hole components
avoid components on the Pi board (so they don't short them out), and to avoid restricting air getting
to the main ARM processor.
