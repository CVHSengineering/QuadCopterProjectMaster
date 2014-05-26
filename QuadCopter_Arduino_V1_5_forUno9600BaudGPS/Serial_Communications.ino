void startSerialAndWire()
{
  Serial.begin(57600);
  xbeeSerial.begin(57600);
  gpsSerPort.begin(9600); //start GPS serial comm at 9600 baud

}

void serialOutput()
{
  Serial.print("COMPheadingDEG:");
  Serial.print(COMPheadingDEG); // print the reading
  Serial.println(",");
  Serial.print("Time:");
  Serial.print((float)altimeterTime,2);   //prints time since program started
  Serial.println(",");
  //  Serial.print("Temperature: ");
  //  Serial.print(temperature, DEC);
  //  Serial.println(" deg C");
  Serial.print("BAROtemperatureDEGF:");
  Serial.print(BAROtemperatureDEGF, DEC);
  Serial.println(",");
  //  Serial.println(" deg F");
  //  Serial.print("Pressure: ");
  //  Serial.print(pressure, DEC);
  //  Serial.println(" Pa");
  Serial.print("BAROpressurePSI:");
  Serial.print((float)BAROpressurePSI, 2);
  Serial.println(",");
  //  Serial.println(" PSI");
  // Serial.print("Altitude: ");
  //  Serial.print(altitude, 2);
  //  Serial.println(" meters");
  Serial.print("BAROaltitudeFEET_MSL:");
  Serial.print(BAROaltitudeFEET_MSL,2);
  Serial.println(",");
  //  Serial.print("BAROaltitudeinitial:");
  //  Serial.print(BAROaltitudeFeetInitial,2);
  //  Serial.println(",");
  Serial.print("BAROaltitudeFEET_AGL:");
  Serial.print(BAROaltitudeFEET_AGL,2);
  Serial.println(",");
  //  course=course++;
  //  Serial.print("Course:");
  //  Serial.print(course);
  //  Serial.println(",");
  //  Serial.println(" feet");
  //  Serial.println();


 xbeeSerial.print("COMPheadingDEG:");
  xbeeSerial.print(COMPheadingDEG); // print the reading
  xbeeSerial.println(",");
  xbeeSerial.print("Time:");
  xbeeSerial.print((float)altimeterTime,2);   //prints time since program started
  xbeeSerial.println(",");
  //  xbeeSerial.print("Temperature: ");
  //  xbeeSerial.print(temperature, DEC);
  //  xbeeSerial.println(" deg C");
  xbeeSerial.print("BAROtemperatureDEGF:");
  xbeeSerial.print(BAROtemperatureDEGF, DEC);
  xbeeSerial.println(",");
  //  xbeeSerial.println(" deg F");
  //  xbeeSerial.print("Pressure: ");
  //  xbeeSerial.print(pressure, DEC);
  //  xbeeSerial.println(" Pa");
  xbeeSerial.print("BAROpressurePSI:");
  xbeeSerial.print((float)BAROpressurePSI, 2);
  xbeeSerial.println(",");
  //  xbeeSerial.println(" PSI");
  // xbeeSerial.print("Altitude: ");
  //  xbeeSerial.print(altitude, 2);
  //  xbeeSerial.println(" meters");
  xbeeSerial.print("BAROaltitudeFEET_MSL:");
  xbeeSerial.print(BAROaltitudeFEET_MSL,2);
  xbeeSerial.println(",");
  //  xbeeSerial.print("BAROaltitudeinitial:");
  //  xbeeSerial.print(BAROaltitudeFeetInitial,2);
  //  xbeeSerial.println(",");
  xbeeSerial.print("BAROaltitudeFEET_AGL:");
  xbeeSerial.print(BAROaltitudeFEET_AGL,2);
  xbeeSerial.println(",");
  //  course=course++;
  //  xbeeSerial.print("Course:");
  //  xbeeSerial.print(course);
  //  xbeeSerial.println(",");
  //  xbeeSerial.println(" feet");
  //  xbeeSerial.println();
}





