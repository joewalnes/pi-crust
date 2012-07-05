Pi Crust
========

This is a PCB that brings sanity to Raspberry Pi headers.

![Pi Crust PCB Layout](https://github.com/joewalnes/pi-crust/raw/master/images/pcb.png)

### This project is a work in progress. The board is not finished yet. ###

The [Raspberry Pi](http://www.raspberrypi.org/) is the new play toy for hackers. But interfacing
with peripherals is a bit awkward... this board aims to address that.


Features
--------

*   Really compact - sits *inside* the surface area of the Raspberry Pi and adds less than 2mm to the height. If you have a case for your Raspberry Pi, this board should fit inside it.
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


License
-------

[Creative Commons 2.5, Attribution, Share-alike] (http://creativecommons.org/licenses/by-sa/2.5/)


Physical Design
---------------

The toughest part of this design was making it fit inside a Raspberry Pi. The existing Raspberry Pi headers
actually go all the way through the board and it sits approximately 2mm above the Raspberry Pi (very close).
It's almost as if the board was part of the original board.

Because it sits so close to the Raspberry Pi, [care has been taken](https://twitter.com/joewalnes/status/220147308359196672/photo/1) to ensure that any thru-hole components
avoid components on the Raspberry Pi board (so they don't short them out), and to avoid restricting air getting
to the main ARM processor.


Parts Required
--------------

Apart from the PCB and a Raspberry Pi, you also need:

*   0.1" female headers. Quantity x Number of pins: 1x1, 1x3, 3x4, 1x5, 2x6, 1x8. You can [buy these in longer runs](http://www.adafruit.com/products/598) and break them into smaller numbers of pins.
*   26 x [AF-0.5(L) pin inserts](http://www.mac8usa.com/pin-insert-AF-lev2.php).
*   4 x [THC-1.6-3.0-2 thru-hole spacers](http://www.mac8usa.com/tht-th-series-insert-spacer_thc16.php).


Assembly Instructions
---------------------

*   Insert the 26 pin inserts into the 26 Raspberry Pi connector pins, from the top. This allows the Raspberry Pi's pins to be pushed through the board, while forming tight connections.
*   Once inserted, remove the pins from these by pressing the Raspberry Pi down against a hard surface. The pins should come out, but leave the rings in the socket.
*   Solder all the female headers to the remaining holes on the top of the board.
*   Solder the 4 thru-hole spacers to the locations on the bottom of the board. This ensures the board is nice and sturdy against the Raspberry Pi.
*   Go play.


Project Status
--------------

Beta board is designed, but I have not received prototypes yet. Not tested.

