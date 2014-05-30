/*
QuadCopter Cockpit Display Program
 Developed by 
 Castle View High School 
 Engineering IV Class, Spring 2014
 Students:
 Thomas Brink
 Daniel Costello
 Alan Kopp
 Max Maroney
 Josh Pederson
 Meg Shapiro
 Bobby Thornbrugh
 Cameron Vogel
 Teacher / Mentor:
 Robert Hazlehurst
 */

#include <Wire.h>
#include <SoftwareSerial.h>
#include <TinyGPS++.h>

#define unusedAnalog A0
#define unusedAnalog A1
#define unusedAnalog A2
#define unusedAnalog A3
#define I2CSDA A4
#define I2CSCL A5

#define uartRX 0
#define uartTX 1
#define xbeeSerialRX 2
#define xbeeSerialTX 3
#define gpsSerialRX 4
#define gpsSerialTX 5
#define ballDrop 6
#define unusedDigital 7
#define unusedDigital 8
#define unusedDigital 9
#define unusedDigital 10
#define unusedDigital 11
#define unusedDigital 12
#define unusedDigital 13

SoftwareSerial xbeeSerial (xbeeSerialRX,xbeeSerialTX);
SoftwareSerial gpsSerPort (gpsSerialRX,gpsSerialTX);

TinyGPSPlus gps;

void setup()
{
  Wire.begin();
  startSerialAndWire();
  //setupAltimeter();
  //  dropSetup();
}

void loop()
{
  //compass();
  //readAltimeter();
  serialOutputGPSData();
  serialOutput();
  //  drop();

}





