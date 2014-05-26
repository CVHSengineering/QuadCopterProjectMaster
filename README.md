QuadCopterProjectMaster
=======================
This repository is for storing the Arduino and Processing software for the Castle View High School Engineering 
QuadCopter Project.  

The Arduino code is designed for an Arduino Uno with an Xbee Shield, with a compass and
altimeter (both I2C devices), and a GPS connected via SoftwareSerial creating GGA and RMC NEMA sentences 
running at 9600 Baud and 2 Hz.  The Xbee is connected via SoftwareSerial running at 57600 Baud.

The Processing code is designed to read the data from Arduino and display it on the cockpit displays.

The MapSetup code is used to set the scaling factors for the map.
