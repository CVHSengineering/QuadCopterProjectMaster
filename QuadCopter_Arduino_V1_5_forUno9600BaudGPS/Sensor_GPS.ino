/* This sample code demonstrates the normal use of a TinyGPS object.
 It requires the use of SoftwareSerial, and assumes that you have a
 57600-baud serial GPS device hooked up on pins 5(rx) and 4(tx).

 Looking down on the GPS, with the pins across the bottom, wire the GPS
 as follows:

 Pin 5 GND (left most) to Arduino GND
 Pin 4 GND (2nd from left) to Arduino GND
 Pin 3 TX (middle) to Arduino Pin 4 (RX)
 (There is a voltage mismatch with this 3V GPS and a 5V Arduino, but the Arduino will read the 3V signal from the GPS as HIGH, so it will still work)
 Pin 2 RX (2nd from right) leave disconnected due voltage mis-match with 5V Arduino
 (Pin 2 is not needed anyway since the GPS transmits data, but does not need to receive data)
 Pin 1 3.3V (right most pin) to Arduino 3.3V power

 This sample code demonstrates just about every built-in operation of TinyGPS++ (TinyGPSPlus).
 It requires the use of SoftwareSerial, and assumes that you have a
 57600-baud serial GPS device hooked up on pins 4(rx) and 5(tx).
 */


void serialOutputGPSData()
{
//  Serial.print("GPSlatDEG:");
//  printFloat(gps.location.lat(), gps.location.isValid(), 11, 6);
//  Serial.println(",");
//  Serial.print("GPSlongDEG:");
//  printFloat(gps.location.lng(), gps.location.isValid(), 12, 6);
//  Serial.println(",");
//  Serial.print("GPSaltitudeFEET_MSL:");
//  printFloat(gps.altitude.feet(), gps.altitude.isValid(), 7, 0);
//  Serial.println(",");
//  Serial.print("GPScourseDEG:");
//  printFloat(gps.course.deg(), gps.course.isValid(), 7, 2);
//  Serial.println(",");
//  Serial.print("GPSspeedMPH:");
//  printFloat(gps.speed.mph(), gps.speed.isValid(), 6, 2);
//  Serial.println(",");
//  Serial.print("GPSspeedKNOTS:");
//  printFloat(gps.speed.knots(), gps.speed.isValid(), 6, 2);
//  Serial.println(",");

  xbeeSerial.print("GPSlatDEG:");
  printFloat(gps.location.lat(), gps.location.isValid(), 11, 6);
  xbeeSerial.println(",");
  xbeeSerial.print("GPSlongDEG:");
  printFloat(gps.location.lng(), gps.location.isValid(), 12, 6);
  xbeeSerial.println(",");
  xbeeSerial.print("GPSaltitudeFEET_MSL:");
  printFloat(gps.altitude.feet(), gps.altitude.isValid(), 7, 0);
  xbeeSerial.println(",");
  xbeeSerial.print("GPScourseDEG:");
  printFloat(gps.course.deg(), gps.course.isValid(), 7, 2);
  xbeeSerial.println(",");
  xbeeSerial.print("GPSspeedMPH:");
  printFloat(gps.speed.mph(), gps.speed.isValid(), 6, 2);
  xbeeSerial.println(",");
  xbeeSerial.print("GPSspeedKNOTS:");
  printFloat(gps.speed.knots(), gps.speed.isValid(), 6, 2);
  xbeeSerial.println(",");

  smartDelay(500);

  if (millis() > 5000 && gps.charsProcessed() < 10)
  {
    xbeeSerial.println(F("No GPS data received: check wiring"));

  }

}

// This custom version of delay() ensures that the gps object
// is being "fed".
static void smartDelay(unsigned long ms)
{
  unsigned long start = millis();
  do
  {
    while (gpsSerPort.available()) // change this from Serial. to gpsSerPort. to switch between hardware and software serial
      gps.encode(gpsSerPort.read()); // change this from Serial. to gpsSerPort. to switch between hardware and software serial
  }
  while (millis() - start < ms);
}

static void printFloat(float val, bool valid, int len, int prec)
{
  if (!valid)
  {
    while (len-- > 1)
    {
      xbeeSerial.print('*');
    }
    xbeeSerial.print(' ');
  }
  else
  {
    xbeeSerial.print(val, prec);
    int vi = abs((int)val);
    int flen = prec + (val < 0.0 ? 2 : 1); // . and -
    flen += vi >= 1000 ? 4 : vi >= 100 ? 3 : vi >= 10 ? 2 : 1;
    for (int i = flen; i < len; ++i)
    {
      xbeeSerial.print(' ');
    }
  }
  smartDelay(0);
}







