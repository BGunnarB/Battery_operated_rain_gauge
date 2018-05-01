# Battery_operated_rain_gauge

This project is for a battery-operated (2 x AA) rain-gauge in the MySensors family.

The requirements were that the gauge should report the rainfall during the last 5 to 10 minutes to the controller. Since the node should be asleep most of the time it would not be able to keep track of the time between reports, so some other way of time-keeping should be provided.

Also, the tipping-bucket rain-gauge typically generated contact bounce, which should be filtered out.

The solution is an Arduino Pro-Mini 8 MHz, 3.3 V and the NRF24+ radio. Timing is provided by a CMOS 555 timer which generates one pulse every minute. Every minute-pulse generates an interrupt. After a pre-set number of minute pulses, the rainfall and battery status is reported. 

Every time the bucket tips, an interrupt is generated. The rainfall is incremented by the amount that the bucket indicates. The contact bounce is filtered out by another CMOS 555 timer since I had a few of these handy.

The total power consumption by the circuit is 240 nA when sleeping. The LED on the Arduino has been removed but not the power regulator.

The PCB was designed in KiCad and the board produced by OSHPark in the US.
