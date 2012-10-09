Pi Crust
========

This is a PCB that brings sanity to Raspberry Pi headers.

![Pi Crust Prototype](https://github.com/joewalnes/pi-crust/raw/master/images/prototype.jpg)
(Early Prototype)

![Pi Crust PCB Layout](https://github.com/joewalnes/pi-crust/raw/master/images/pcb.png)
(PCB)

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
*   All thru-hole components - you can solder it yourself.
*   Cheapety cheapy cheap.
*   Open source hardware.
*   [More photos here](http://todayimade.co/items/joe-walnes-made-a-tiny-breakout-board-for-raspberry-pi)

Non-Features
------------

There are no electronic components on the board. Apart from the connectors.


License
-------

[Creative Commons 2.5, Attribution, Share-alike](http://creativecommons.org/licenses/by-sa/2.5/)


Physical Design
---------------

The toughest part of this design was making it fit inside a Raspberry Pi. The existing Raspberry Pi headers
actually go all the way through the board and it sits approximately 2mm above the Raspberry Pi (very close).
It's almost as if the board was part of the original board.

Because it sits so close to the Raspberry Pi, [care has been taken](https://twitter.com/joewalnes/status/220147308359196672/photo/1)
to ensure that any thru-hole components avoid components on the Raspberry Pi board (so they don't short them out),
and to avoid restricting air getting to the main ARM processor.


I Want One!
===========

I don't sell these. But you can order the parts and assemble it yourself. If you can do basic soldering, you're all set. It's very easy.


Ordering the PCB
----------------

I recommend ordering the PCB from [OSHPark.com](http://oshpark.com).

If you're unfamiliar with this service, it allows you to upload a PCB and they'll get it made for you. The minimum you can order is 3 - give some to your friends.

Ordering 3 Pi Crust PCBs from OSHPark should cost about $13.80 and take 2-4 weeks to arrive.

*   Download the [PCB Board file](https://github.com/joewalnes/pi-crust/raw/master/pi-crust.brd).
*   Go to [OSHPark.com](http://oshpark.com), click 'Get Started Now', and upload the file. Follow the instructions and you'll receive some high quality PCBs in a few weeks time.


Parts Required
--------------

<table>
  <tr>
    <th>Part</th>
    <th>Quantity</th>
    <th>Where to get it</th>
  </tr>
  <tr>
    <td>PCB</td>
    <td>1</td>
    <td>See above for how to get the PCB</td>
  </tr>
  <tr>
    <td>2x13 0.1" bottom entry board-to-board connector</td>
    <td>1</td>
    <td><a href="http://www.mouser.com/ProductDetail/?qs=sGAEpiMZZMvFp%252byPHbnZYwunzTEjB0Kf">Mouser ($1.75)</a></td>
  </tr>
  <tr>
    <td>1x2 0.1" female header</td>
    <td>1</td>
    <td><a href="http://www.pololu.com/catalog/product/1012">Pololu ($0.29)</a></td>
  </tr>
  <tr>
    <td>1x3 0.1" female header</td>
    <td>1</td>
    <td><a href="http://www.pololu.com/catalog/product/1013">Pololu ($0.34)</a></td>
  </tr>
  <tr>
    <td>1x4 0.1" female header</td>
    <td>3</td>
    <td><a href="http://www.pololu.com/catalog/product/1014">Pololu ($0.39 each)</a></td>
  </tr>
  <tr>
    <td>1x5 0.1" female header</td>
    <td>1</td>
    <td><a href="http://www.pololu.com/catalog/product/1015">Pololu ($0.44)</a></td>
  </tr>
  <tr>
    <td>1x6 0.1" female header</td>
    <td>2</td>
    <td><a href="http://www.pololu.com/catalog/product/1016">Pololu ($0.49 each)</a></td>
  </tr>
  <tr>
    <td>1x8 0.1" female header</td>
    <td>1</td>
    <td><a href="http://www.pololu.com/catalog/product/1018">Pololu ($0.59)</a></td>
  </tr>
  <tr>
    <td>1x2 0.1" male header</td>
    <td>1</td>
    <td><!-- TODO --></td>
  </tr>
</table>

Note:
*   The prices above are in USD dollars, in the minimum quantity available, and may have change since this page was written. Please check the websites for the most recent prices.
*   The prices above many not include shipping or tax.
*   When ordering, remember to check you've ordered the right quantity. Some of these parts require more than 1.


Assembly Instructions
---------------------

*   If you ordered the PCB through OSHPark.com, there may be additional tabs attached to some of the edges of the PCB. You should remove these with pliers or cutters.
*   Insert the big 26 pin connector into the board from the top. The top is the side with all the labels next to the pins. There is only one place the connector will fit.
*   Flip board over and solder the 26 pin connnector in place from the bottom. You'll notice there are 4 rows of holes - the outer rows are the ones you want to solder. The inner ones should be left as is, as that's how the Raspberry Pi connects.
*   Flip board back over to the top and insert the remaining female headers. Flip over to the bottom to solder in place.
*   Take the 1x2 male header and remove the metal (easiest with pliers). You don't need the metal part. You should be left with a little piece of black plastic. Break it in half. Take the two parts and glue them to the bottom of the PCB, in the spaces marked with little squares. These act as little feet for the board to prevent it from pressing against the Raspberry Pi.
*   Go play.


