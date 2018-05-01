# Battery_operated_rain_gauge

This project is for a battery-operated (2 x AA) rain-gauge using the MySensors library.

The requirements were that the gauge should report the rainfall during the last 5 to 10 minutes to the controller. Since the node should be asleep most of the time it would not be able to keep track of the time between reports, so some other way of time-keeping should be provided.

Also, the tipping-bucket rain-gauge typically generated contact bounce, which should be filtered out.

The solution is an Arduino Pro-Mini 8 MHz, 3.3 V and the NRF24L01+ radio. Timing is provided by a CMOS 555 timer which generates one pulse every minute. Every minute-pulse generates an interrupt. After a pre-set number of minute pulses, the rainfall and battery status are reported. 

Every time the bucket tips, an interrupt is generated. The rainfall is incremented by the amount that the bucket indicates. The contact bounce is filtered out by another CMOS 555 timer since I had a few of these handy.

To indicate that the timer generated an interrupt, a LED flashes green. To indicate that the rain-bucket generated an interrupt, the LED flashes red.

The battery sensor circuit is off the pcb but is the usual voltage divider 1M in series with 470k found elsewhere on the MySensors webpage. A capacitor of 100 nF is added across the 470k resistor for decoupling of noise.

It is up to the controller (in my case OpenHAB) to sum up the rainfall during e.g. 24 hours. The rain-gauge simply reports the rainfall during the elapsed period.

The total power consumption by the circuit is 240 nA when sleeping. The LED on the Arduino has been removed but not the power regulator.

The PCB was designed in KiCad and the board produced by OSHPark in the US.
