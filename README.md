# poe-led-bar

Important! I did not have a chance to write docs for this project yet, so:
The hardware is proven at this point and people have successfully ordered and used PCBs based off this repo, with one exception.

The PCB design has a minor bug with the polarity of one of the LEDs inside the ethernet jack.
In rev1.0 of the PCB design, this is not only causing the LED to not work but also the entire ethernet link, because the LEDs are also used as strapping pins to configure the PHY.

The workaround I used is to use this RJ45 jack, which has a bicolor LED so polarity doesn't matter:
https://www.digikey.com/en/products/detail/adam-tech/MTJ-88TX1-FSD-LV/9832786
You could use https://www.digikey.com/en/products/detail/adam-tech/MTJ-88TX1-LV/9832558 which is in stock.

If you dont particularly care about the LEDs in the jack, you can also just get a passive jack without LEDs and solder a 1k SMD resistor across the pads for the LEDs. That should also work fine to configure the PHY.

I will fix this in a future release so more common jacks like the ones stocked at JLC and LCSC can be used.
