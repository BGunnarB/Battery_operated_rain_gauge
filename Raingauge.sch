EESchema Schematic File Version 2
LIBS:Raingauge-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:mysensors_arduino
LIBS:mysensors_connectors
LIBS:mysensors_logic
LIBS:mysensors_mcu
LIBS:mysensors_memories
LIBS:mysensors_network
LIBS:mysensors_radios
LIBS:mysensors_regulators
LIBS:mysensors_security
LIBS:mysensors_sensors
LIBS:gbmylib
LIBS:Raingauge-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Raingauge"
Date "18-02-22"
Rev "4.1.1"
Comp "GBmySensors"
Comment1 "Added LED. Corrected components"
Comment2 "Component values and new connectors"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ArduinoProMini IC1
U 1 1 57DBD5B5
P 5750 3400
F 0 "IC1" H 5000 4650 40  0000 L BNN
F 1 "ArduinoProMini" H 6150 2000 40  0000 L BNN
F 2 "mysensors_arduino:pro_mini" H 5750 3400 30  0001 C CIN
F 3 "" H 5750 3400 60  0000 C CNN
	1    5750 3400
	1    0    0    -1  
$EndComp
$Comp
L NRF24L01 U3
U 1 1 57DBD6D7
P 8950 2350
F 0 "U3" H 9050 2600 60  0000 C CNN
F 1 "NRF24L01" H 9200 2100 60  0000 C CNN
F 2 "mysensors_radios:NRF24L01" H 8950 2200 60  0001 C CNN
F 3 "" H 8950 2200 60  0000 C CNN
	1    8950 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 57DC0CB8
P 4700 4900
F 0 "#PWR3" H 4700 4650 50  0001 C CNN
F 1 "GND" H 4700 4750 50  0000 C CNN
F 2 "" H 4700 4900 50  0000 C CNN
F 3 "" H 4700 4900 50  0000 C CNN
	1    4700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2300 4850 2300
Wire Wire Line
	4700 4600 4850 4600
Wire Wire Line
	4700 4400 4700 4900
Wire Wire Line
	8550 2350 7150 2350
Wire Wire Line
	7150 2350 7150 3500
Wire Wire Line
	7150 3500 6750 3500
Wire Wire Line
	8550 2250 7250 2250
Wire Wire Line
	7250 2250 7250 3600
Wire Wire Line
	7250 3600 6750 3600
Wire Wire Line
	8550 2450 7350 2450
Wire Wire Line
	7350 2450 7350 3700
Wire Wire Line
	7350 3700 6750 3700
Wire Wire Line
	9350 2250 9350 1950
Wire Wire Line
	9350 1950 7050 1950
Wire Wire Line
	7050 1950 7050 3300
Wire Wire Line
	7050 3300 6750 3300
Wire Wire Line
	6900 2500 6750 2500
Wire Wire Line
	8950 2700 8950 2900
Wire Wire Line
	8950 1800 10100 1800
$Comp
L CP C5
U 1 1 57DC24FF
P 10100 2150
F 0 "C5" H 10125 2250 50  0000 L CNN
F 1 "22u" H 10125 2050 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_Tantal_D5.5mm_P5.00mm" H 10138 2000 50  0001 C CNN
F 3 "" H 10100 2150 50  0000 C CNN
	1    10100 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 57DC25FA
P 10100 2450
F 0 "#PWR7" H 10100 2200 50  0001 C CNN
F 1 "GND" H 10100 2300 50  0000 C CNN
F 2 "" H 10100 2450 50  0000 C CNN
F 3 "" H 10100 2450 50  0000 C CNN
	1    10100 2450
	1    0    0    -1  
$EndComp
Connection ~ 9800 1800
Wire Wire Line
	10100 2300 10100 2450
NoConn ~ 4850 2600
NoConn ~ 4850 4100
NoConn ~ 4850 4200
NoConn ~ 6750 2300
NoConn ~ 6750 2400
NoConn ~ 6750 2700
NoConn ~ 6750 2800
NoConn ~ 6750 3000
NoConn ~ 6750 3100
NoConn ~ 6750 4000
NoConn ~ 6750 4100
NoConn ~ 6750 4200
NoConn ~ 6750 4500
NoConn ~ 6750 4600
Wire Wire Line
	4850 4400 4700 4400
Connection ~ 4700 4600
Wire Wire Line
	4850 4500 4700 4500
Connection ~ 4700 4500
$Comp
L LMC555xN U1
U 1 1 5A89E063
P 2500 4400
F 0 "U1" H 2100 4750 50  0000 L CNN
F 1 "LMC555xN" H 2600 4750 50  0000 L CNN
F 2 "gbKicadLib:DIP-8_0_ELL" H 2500 4400 50  0001 C CNN
F 3 "" H 2500 4400 50  0001 C CNN
	1    2500 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 5A89E0D3
P 2500 5100
F 0 "#PWR1" H 2500 4850 50  0001 C CNN
F 1 "GND" H 2500 4950 50  0000 C CNN
F 2 "" H 2500 5100 50  0001 C CNN
F 3 "" H 2500 5100 50  0001 C CNN
	1    2500 5100
	1    0    0    -1  
$EndComp
$Comp
L LMC555xN U2
U 1 1 5A89E230
P 8900 4700
F 0 "U2" H 8500 5050 50  0000 L CNN
F 1 "LMC555xN" H 9000 5050 50  0000 L CNN
F 2 "gbKicadLib:DIP-8_0_ELL" H 8900 4700 50  0001 C CNN
F 3 "" H 8900 4700 50  0001 C CNN
	1    8900 4700
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A8BE4B1
P 3250 3750
F 0 "R2" V 3330 3750 50  0000 C CNN
F 1 "1M" V 3250 3750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3180 3750 50  0001 C CNN
F 3 "" H 3250 3750 50  0001 C CNN
	1    3250 3750
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5A8BE4FF
P 10000 4450
F 0 "R4" V 10080 4450 50  0000 C CNN
F 1 "1M" V 10000 4450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 9930 4450 50  0001 C CNN
F 3 "" H 10000 4450 50  0001 C CNN
	1    10000 4450
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A8BE541
P 10000 4950
F 0 "R5" V 10080 4950 50  0000 C CNN
F 1 "22k" V 10000 4950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 9930 4950 50  0001 C CNN
F 3 "" H 10000 4950 50  0001 C CNN
	1    10000 4950
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A8BE58A
P 1650 3800
F 0 "R1" V 1730 3800 50  0000 C CNN
F 1 "33k" V 1650 3800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1580 3800 50  0001 C CNN
F 3 "" H 1650 3800 50  0001 C CNN
	1    1650 3800
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C4
U 1 1 5A8BE660
P 10000 5450
F 0 "C4" H 10010 5520 50  0000 L CNN
F 1 "22u" H 10010 5370 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_Tantal_D5.5mm_P5.00mm" H 10000 5450 50  0001 C CNN
F 3 "" H 10000 5450 50  0001 C CNN
	1    10000 5450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A8BE6B6
P 3250 4800
F 0 "C2" H 3275 4900 50  0000 L CNN
F 1 "100n" H 3275 4700 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7.2mm_W2.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 3288 4650 50  0001 C CNN
F 3 "" H 3250 4800 50  0001 C CNN
	1    3250 4800
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A8BE6F3
P 3550 3750
F 0 "C1" H 3575 3850 50  0000 L CNN
F 1 "100n" H 3575 3650 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7.2mm_W2.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 3588 3600 50  0001 C CNN
F 3 "" H 3550 3750 50  0001 C CNN
	1    3550 3750
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5A8BE786
P 9550 3650
F 0 "C3" H 9575 3750 50  0000 L CNN
F 1 "100n" H 9575 3550 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7.2mm_W2.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 9588 3500 50  0001 C CNN
F 3 "" H 9550 3650 50  0001 C CNN
	1    9550 3650
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A8BE7ED
P 10000 3600
F 0 "R3" V 10080 3600 50  0000 C CNN
F 1 "2.5M" V 10000 3600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 9930 3600 50  0001 C CNN
F 3 "" H 10000 3600 50  0001 C CNN
	1    10000 3600
	1    0    0    -1  
$EndComp
$Comp
L POT_TRIM RV1
U 1 1 5A8BE841
P 10000 4000
F 0 "RV1" V 9825 4000 50  0000 C CNN
F 1 "1M" V 9900 4000 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Piher_PT-10v10_Horizontal_Px10.0mm_Py5.0mm" H 10000 4000 50  0001 C CNN
F 3 "" H 10000 4000 50  0001 C CNN
	1    10000 4000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR4
U 1 1 5A8BEA25
P 8900 5650
F 0 "#PWR4" H 8900 5400 50  0001 C CNN
F 1 "GND" H 8900 5500 50  0000 C CNN
F 2 "" H 8900 5650 50  0001 C CNN
F 3 "" H 8900 5650 50  0001 C CNN
	1    8900 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3750 10000 3850
Wire Wire Line
	10000 4150 10000 4300
Wire Wire Line
	10000 4600 10000 4800
Wire Wire Line
	10000 5100 10000 5350
Wire Wire Line
	9400 4900 9400 5200
Wire Wire Line
	8300 5200 10000 5200
Connection ~ 10000 5200
Wire Wire Line
	8400 4500 8300 4500
Wire Wire Line
	8300 4500 8300 5200
Connection ~ 9400 5200
Wire Wire Line
	8900 3350 8900 4300
Wire Wire Line
	8400 4900 8200 4900
Wire Wire Line
	8200 4900 8200 4000
Wire Wire Line
	9850 4000 9800 4000
Wire Wire Line
	9400 4700 10000 4700
$Comp
L GND #PWR5
U 1 1 5A8BEF6E
P 8950 2900
F 0 "#PWR5" H 8950 2650 50  0001 C CNN
F 1 "GND" H 8950 2750 50  0000 C CNN
F 2 "" H 8950 2900 50  0001 C CNN
F 3 "" H 8950 2900 50  0001 C CNN
	1    8950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3850 9400 4500
Wire Wire Line
	8050 3850 9400 3850
Wire Wire Line
	8050 2150 8050 4350
Wire Wire Line
	8050 2150 6900 2150
Wire Wire Line
	6900 2150 6900 2500
Wire Wire Line
	2500 4800 2500 5100
Connection ~ 2500 5000
Wire Wire Line
	3250 3900 3250 4650
Connection ~ 3250 4400
Connection ~ 3250 4600
Wire Wire Line
	4450 4200 4450 5200
Wire Wire Line
	4450 5200 6900 5200
Wire Wire Line
	6900 5200 6900 2600
Wire Wire Line
	6900 2600 6750 2600
Wire Wire Line
	1400 3300 3550 3300
Wire Wire Line
	1850 4600 2000 4600
Wire Wire Line
	1850 3300 1850 4600
Connection ~ 2500 3300
Wire Wire Line
	3550 3900 3550 5600
Connection ~ 3550 5000
Wire Wire Line
	3550 2300 3550 3600
Wire Wire Line
	1400 3300 1400 4650
Connection ~ 1850 3300
Wire Wire Line
	1250 5350 7100 5350
Wire Wire Line
	7100 5350 7100 3900
Wire Wire Line
	7100 3900 6750 3900
NoConn ~ 6750 4300
NoConn ~ 6750 4400
NoConn ~ 9350 2350
Wire Wire Line
	10000 5600 10000 5550
Wire Wire Line
	3550 5600 10000 5600
Wire Wire Line
	9550 2450 9550 3200
Wire Wire Line
	9550 2450 9350 2450
Wire Wire Line
	10100 1800 10100 2000
Wire Wire Line
	8950 1800 8950 2000
Connection ~ 10000 4700
Wire Wire Line
	9800 4000 9800 4250
Wire Wire Line
	9800 4250 10000 4250
Connection ~ 10000 4250
$Comp
L GND #PWR6
U 1 1 5A8C102C
P 9550 3950
F 0 "#PWR6" H 9550 3700 50  0001 C CNN
F 1 "GND" H 9550 3800 50  0000 C CNN
F 2 "" H 9550 3950 50  0001 C CNN
F 3 "" H 9550 3950 50  0001 C CNN
	1    9550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3350 9550 3500
Connection ~ 9550 3350
Wire Wire Line
	9550 3800 9550 3950
NoConn ~ 2000 4400
Connection ~ 9800 3350
Wire Wire Line
	8900 5100 8900 5650
Connection ~ 8900 5600
Text Notes 8350 2100 0    60   ~ 0
Radio
Text Notes 8250 4200 0    60   ~ 0
1 min. timer
Text Notes 1200 3200 0    60   ~ 0
Debounce delay 100 mS
Wire Wire Line
	10000 3350 10000 3450
Wire Wire Line
	9550 3200 6750 3200
$Comp
L LED_Dual_2pin D1
U 1 1 5A8C4695
P 7650 3950
F 0 "D1" H 7650 4175 50  0000 C CNN
F 1 "LED_Dual_2pin" H 7650 3700 50  0000 C CNN
F 2 "LEDs:LED_Rectangular_W5.0mm_H2.0mm" H 7650 3950 50  0001 C CNN
F 3 "" H 7650 3950 50  0001 C CNN
	1    7650 3950
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5A8C4760
P 7650 3450
F 0 "R6" V 7730 3450 50  0000 C CNN
F 1 "56" V 7650 3450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 7580 3450 50  0001 C CNN
F 3 "" H 7650 3450 50  0001 C CNN
	1    7650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3600 7650 3650
Wire Wire Line
	6750 2900 7650 2900
Wire Wire Line
	7650 2900 7650 3300
Wire Wire Line
	7650 4250 7650 4350
Wire Wire Line
	7650 4350 8050 4350
Connection ~ 8050 3850
Wire Wire Line
	8200 4000 8900 4000
Connection ~ 8900 4000
Wire Wire Line
	8900 3350 10000 3350
Wire Wire Line
	3250 3100 3250 3600
Connection ~ 3250 3300
Wire Wire Line
	3000 4600 3250 4600
Wire Wire Line
	3000 4400 3250 4400
Wire Wire Line
	3000 4200 4450 4200
Wire Wire Line
	3250 5000 3250 4950
Connection ~ 3250 5000
Connection ~ 3550 3300
Text Label 2700 3300 0    60   ~ 0
VCC
Text Label 9400 1800 0    60   ~ 0
VCC
Wire Wire Line
	9800 1800 9800 3350
$Comp
L C_Small C6
U 1 1 5A8CA28F
P 7900 5000
F 0 "C6" H 7910 5070 50  0000 L CNN
F 1 "10n" H 7910 4920 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7.2mm_W2.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 7900 5000 50  0001 C CNN
F 3 "" H 7900 5000 50  0001 C CNN
	1    7900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4900 7900 4700
Wire Wire Line
	7900 4700 8400 4700
Wire Wire Line
	7900 5100 7900 5600
Connection ~ 7900 5600
Text Notes 10100 3850 0    60   ~ 0
Sum R3+R4=3.5M
$Comp
L VCC #PWR2
U 1 1 5A8CB09B
P 3250 3100
F 0 "#PWR2" H 3250 2950 50  0001 C CNN
F 1 "VCC" H 3250 3250 50  0000 C CNN
F 2 "" H 3250 3100 50  0001 C CNN
F 3 "" H 3250 3100 50  0001 C CNN
	1    3250 3100
	1    0    0    -1  
$EndComp
Text Label 3850 5350 0    60   ~ 0
BAT_SENSE
$Comp
L Conn_01x02_Male J1
U 1 1 5A8E8F92
P 1050 4200
F 0 "J1" H 1050 4300 50  0000 C CNN
F 1 "Bucket" H 1050 4400 50  0000 C CNN
F 2 "" H 1050 4200 50  0001 C CNN
F 3 "" H 1050 4200 50  0001 C CNN
	1    1050 4200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03_Female J2
U 1 1 5A8E9025
P 1050 4750
F 0 "J2" H 1050 4950 50  0000 C CNN
F 1 "Battery" H 1050 4550 50  0000 C CNN
F 2 "" H 1050 4750 50  0001 C CNN
F 3 "" H 1050 4750 50  0001 C CNN
	1    1050 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 4650 1250 4650
Wire Wire Line
	1250 5350 1250 4850
Wire Wire Line
	1250 4750 1600 4750
Wire Wire Line
	1600 4300 1600 5000
Wire Wire Line
	1600 5000 3550 5000
Wire Wire Line
	1250 4300 1600 4300
Connection ~ 1600 4750
Wire Wire Line
	1650 3650 1650 3300
Connection ~ 1650 3300
Wire Wire Line
	1250 4200 2000 4200
Wire Wire Line
	1650 3950 1650 4200
Connection ~ 1650 4200
Wire Wire Line
	2500 4000 2500 3300
$EndSCHEMATC
