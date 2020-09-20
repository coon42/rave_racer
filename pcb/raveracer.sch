EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:SCART-F J2
U 1 1 5DA8E851
P 4625 2550
F 0 "J2" H 4625 3970 50  0001 C CNN
F 1 "SCART-F" H 4625 3879 50  0000 C CNN
F 2 "w_conn_av:SCART" H 4625 2600 50  0001 C CNN
F 3 " ~" H 4625 2600 50  0001 C CNN
	1    4625 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5DA9381F
P 2225 2175
F 0 "J1" H 2225 2600 50  0000 C CNN
F 1 "System22_Video_PCB" H 2225 2500 50  0000 C CNN
F 2 "w_conn_modu:AMP-MODU-6" H 2225 2175 50  0001 C CNN
F 3 "~" H 2225 2175 50  0001 C CNN
	1    2225 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	4025 3150 3825 3150
Wire Wire Line
	4025 2750 3825 2750
Wire Wire Line
	4025 2350 3825 2350
Wire Wire Line
	4025 1950 3825 1950
$Comp
L power:GND #PWR02
U 1 1 5DA97C38
P 3825 3775
F 0 "#PWR02" H 3825 3525 50  0001 C CNN
F 1 "GND" H 3830 3602 50  0000 C CNN
F 2 "" H 3825 3775 50  0001 C CNN
F 3 "" H 3825 3775 50  0001 C CNN
	1    3825 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3825 1950 3825 2350
Connection ~ 3825 2350
Wire Wire Line
	3825 2350 3825 2750
Connection ~ 3825 2750
Wire Wire Line
	3825 2750 3825 3150
Connection ~ 3825 3150
Wire Wire Line
	3825 3150 3825 3775
Wire Wire Line
	4025 1550 3825 1550
Wire Wire Line
	3825 1550 3825 1950
Connection ~ 3825 1950
$Comp
L power:GND #PWR01
U 1 1 5DA9A3A4
P 3000 2850
F 0 "#PWR01" H 3000 2600 50  0001 C CNN
F 1 "GND" H 3005 2677 50  0000 C CNN
F 2 "" H 3000 2850 50  0001 C CNN
F 3 "" H 3000 2850 50  0001 C CNN
	1    3000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2275 3000 2850
NoConn ~ 2725 2375
Text Label 2725 1975 0    50   ~ 0
Red
Text Label 2725 2075 0    50   ~ 0
Green
Text Label 2725 2175 0    50   ~ 0
Blue
Text Label 2725 2475 0    50   ~ 0
CSYNC
Wire Wire Line
	4025 2550 3500 2550
Text Label 3500 2150 2    50   ~ 0
Red
Text Label 3500 2550 2    50   ~ 0
Green
Text Label 3525 2950 2    50   ~ 0
Blue
Wire Wire Line
	4025 2950 3525 2950
Wire Wire Line
	4025 2150 3500 2150
Wire Wire Line
	2425 1975 2725 1975
Wire Wire Line
	2425 2075 2725 2075
Wire Wire Line
	2425 2175 2725 2175
Wire Wire Line
	2425 2375 2725 2375
Wire Wire Line
	2425 2475 2725 2475
Wire Wire Line
	2425 2275 3000 2275
Text Label 3500 1750 2    50   ~ 0
CSYNC
Wire Wire Line
	4025 1750 3500 1750
$Comp
L power:+12V #PWR03
U 1 1 5DABD633
P 5525 1450
F 0 "#PWR03" H 5525 1300 50  0001 C CNN
F 1 "+12V" H 5540 1623 50  0000 C CNN
F 2 "" H 5525 1450 50  0001 C CNN
F 3 "" H 5525 1450 50  0001 C CNN
	1    5525 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DABDEDD
P 5525 2300
F 0 "R2" H 5595 2346 50  0000 L CNN
F 1 "2k" V 5525 2250 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5455 2300 50  0001 C CNN
F 3 "~" H 5525 2300 50  0001 C CNN
	1    5525 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DABE676
P 5525 1800
F 0 "R1" H 5595 1846 50  0000 L CNN
F 1 "10k" V 5525 1725 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5455 1800 50  0001 C CNN
F 3 "~" H 5525 1800 50  0001 C CNN
	1    5525 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5525 1450 5525 1650
Wire Wire Line
	5525 1950 5525 2050
Wire Wire Line
	5525 2450 5525 2650
Wire Wire Line
	5225 2050 5525 2050
Connection ~ 5525 2050
Wire Wire Line
	5525 2050 5525 2150
$Comp
L power:GND #PWR04
U 1 1 5DACB537
P 5525 2650
F 0 "#PWR04" H 5525 2400 50  0001 C CNN
F 1 "GND" H 5530 2477 50  0000 C CNN
F 2 "" H 5525 2650 50  0001 C CNN
F 3 "" H 5525 2650 50  0001 C CNN
	1    5525 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J3
U 1 1 5DD32B30
P 975 2175
F 0 "J3" H 1083 2556 50  0000 C CNN
F 1 "DEBUG" H 1100 2500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 975 2175 50  0001 C CNN
F 3 "~" H 975 2175 50  0001 C CNN
	1    975  2175
	1    0    0    -1  
$EndComp
Text Label 1175 1975 0    50   ~ 0
Red
Text Label 1175 2075 0    50   ~ 0
Green
Text Label 1175 2175 0    50   ~ 0
Blue
Text Label 1175 2375 0    50   ~ 0
CSYNC
$Comp
L power:GND #PWR0101
U 1 1 5DD37ECA
P 1500 2450
F 0 "#PWR0101" H 1500 2200 50  0001 C CNN
F 1 "GND" H 1505 2277 50  0000 C CNN
F 2 "" H 1500 2450 50  0001 C CNN
F 3 "" H 1500 2450 50  0001 C CNN
	1    1500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1175 2275 1500 2275
Wire Wire Line
	1500 2450 1500 2275
$Comp
L Video:LM1881 U1
U 1 1 5F612B42
P 7350 2125
F 0 "U1" H 7150 2675 50  0000 C CNN
F 1 "LM1881" H 7125 2550 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7350 2125 50  0001 C CNN
F 3 "" H 7350 2125 50  0001 C CNN
	1    7350 2125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F6276DF
P 7350 2600
F 0 "#PWR0102" H 7350 2350 50  0001 C CNN
F 1 "GND" H 7355 2427 50  0000 C CNN
F 2 "" H 7350 2600 50  0001 C CNN
F 3 "" H 7350 2600 50  0001 C CNN
	1    7350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2425 7350 2600
$Comp
L power:+12V #PWR0103
U 1 1 5F629E41
P 7350 1450
F 0 "#PWR0103" H 7350 1300 50  0001 C CNN
F 1 "+12V" H 7365 1623 50  0000 C CNN
F 2 "" H 7350 1450 50  0001 C CNN
F 3 "" H 7350 1450 50  0001 C CNN
	1    7350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1725 7350 1450
$Comp
L Connector:DB15_Female_HighDensity J4
U 1 1 5F636341
P 9200 2175
F 0 "J4" H 9200 3042 50  0001 C CNN
F 1 "VGA-F" H 9200 2951 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-15-HD_Female_Horizontal_P2.29x1.98mm_EdgePinOffset8.35mm_Housed_MountingHolesOffset10.89mm" H 8250 2575 50  0001 C CNN
F 3 " ~" H 8250 2575 50  0001 C CNN
	1    9200 2175
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F641AFA
P 6550 2025
F 0 "C2" V 6298 2025 50  0000 C CNN
F 1 "0.1uF" V 6389 2025 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6588 1875 50  0001 C CNN
F 3 "~" H 6550 2025 50  0001 C CNN
	1    6550 2025
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 2025 6850 2025
Text Label 6275 2025 2    50   ~ 0
CSYNC
Wire Wire Line
	6275 2025 6400 2025
$Comp
L Device:R R3
U 1 1 5F65188A
P 6825 2550
F 0 "R3" H 6755 2504 50  0000 R CNN
F 1 "680K" H 6755 2595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6755 2550 50  0001 C CNN
F 3 "~" H 6825 2550 50  0001 C CNN
	1    6825 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5F6528FF
P 6500 2550
F 0 "C1" H 6615 2596 50  0000 L CNN
F 1 "0.1uF" H 6550 2475 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6538 2400 50  0001 C CNN
F 3 "~" H 6500 2550 50  0001 C CNN
	1    6500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2400 6825 2400
Wire Wire Line
	6825 2400 6825 2125
Wire Wire Line
	6825 2125 6850 2125
Connection ~ 6825 2400
Wire Wire Line
	6500 2700 6825 2700
Wire Wire Line
	6825 2700 6825 2900
Connection ~ 6825 2700
$Comp
L power:GND #PWR0104
U 1 1 5F654F8A
P 6825 2900
F 0 "#PWR0104" H 6825 2650 50  0001 C CNN
F 1 "GND" H 6830 2727 50  0000 C CNN
F 2 "" H 6825 2900 50  0001 C CNN
F 3 "" H 6825 2900 50  0001 C CNN
	1    6825 2900
	1    0    0    -1  
$EndComp
Text Label 8725 1775 2    50   ~ 0
Red
Text Label 8725 1975 2    50   ~ 0
Green
Text Label 8725 2175 2    50   ~ 0
Blue
Text Label 9700 2175 0    50   ~ 0
CSYNC
Wire Wire Line
	8725 1775 8900 1775
Wire Wire Line
	8725 1975 8900 1975
Wire Wire Line
	8725 2175 8900 2175
Wire Wire Line
	9500 2175 9700 2175
$Comp
L power:GND #PWR0105
U 1 1 5F6B3D81
P 8325 2575
F 0 "#PWR0105" H 8325 2325 50  0001 C CNN
F 1 "GND" H 8330 2402 50  0000 C CNN
F 2 "" H 8325 2575 50  0001 C CNN
F 3 "" H 8325 2575 50  0001 C CNN
	1    8325 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	8325 2575 8900 2575
Wire Wire Line
	8900 1675 8325 1675
Connection ~ 8325 2575
Wire Wire Line
	8900 1875 8325 1875
Wire Wire Line
	8325 1675 8325 1875
Connection ~ 8325 1875
Wire Wire Line
	8325 1875 8325 2075
Wire Wire Line
	8900 2075 8325 2075
Connection ~ 8325 2075
Wire Wire Line
	8325 2075 8325 2475
Wire Wire Line
	8900 2475 8325 2475
Connection ~ 8325 2475
Wire Wire Line
	8325 2475 8325 2575
NoConn ~ 9500 1775
NoConn ~ 9500 1975
NoConn ~ 9500 2575
NoConn ~ 8900 2275
NoConn ~ 8900 2375
Text Label 9700 2375 0    50   ~ 0
VSYNC
Wire Wire Line
	9500 2375 9700 2375
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F6D9DF4
P 825 700
F 0 "H1" V 779 850 50  0000 L CNN
F 1 "MountingHole_Pad" V 870 850 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 825 700 50  0001 C CNN
F 3 "~" H 825 700 50  0001 C CNN
	1    825  700 
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F6DC375
P 825 925
F 0 "H2" V 779 1075 50  0000 L CNN
F 1 "MountingHole_Pad" V 870 1075 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 825 925 50  0001 C CNN
F 3 "~" H 825 925 50  0001 C CNN
	1    825  925 
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F6E0AAB
P 825 1150
F 0 "H3" V 779 1300 50  0000 L CNN
F 1 "MountingHole_Pad" V 870 1300 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 825 1150 50  0001 C CNN
F 3 "~" H 825 1150 50  0001 C CNN
	1    825  1150
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5F6E25BB
P 825 1375
F 0 "H4" V 779 1525 50  0000 L CNN
F 1 "MountingHole_Pad" V 870 1525 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 825 1375 50  0001 C CNN
F 3 "~" H 825 1375 50  0001 C CNN
	1    825  1375
	0    1    1    0   
$EndComp
Wire Wire Line
	725  700  725  925 
Connection ~ 725  925 
Wire Wire Line
	725  925  725  1150
Connection ~ 725  1150
Wire Wire Line
	725  1150 725  1375
Connection ~ 725  1375
Wire Wire Line
	725  1375 725  1550
$Comp
L power:GND #PWR?
U 1 1 5F6EA10A
P 725 1550
F 0 "#PWR?" H 725 1300 50  0001 C CNN
F 1 "GND" H 730 1377 50  0000 C CNN
F 2 "" H 725 1550 50  0001 C CNN
F 3 "" H 725 1550 50  0001 C CNN
	1    725  1550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
