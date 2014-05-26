void serialEvent(Serial myPort) {
  // read a byte from the serial port:
  String inString = myPort.readStringUntil(',');
  // split the string into multiple strings
  // where there is a ":"
  String items[] = split(inString, ':');

  // if there was more than one string after the split
  if (items.length > 1) {
    // remove any whitespace from the label
    String label = trim(items[0]);
    // remove the ',' off the end
    String val = split(items[1], ',')[0];
    // check what the label was and update the appropriate variable
    if (label.equals("COMPheadingDEG")) 
    {
      COMPheadingDEG = int(float(val)*0.9676+6.8271); //mag compass error correction
    }
    if (label.equals("BAROtemperatureDEGF")) 
    {
      BAROtemperatureDEGF = int(val);
    }
    if (label.equals("BAROaltitudeFEET_MSL")) 
    {
      BAROaltitudeFEET_MSL = int(val);
    }
    if (label.equals("BAROaltitudeFEET_AGL")) 
    {
      BAROaltitudeFEET_AGL = int(val);
    }
    if (label.equals("Time")) 
    {
      time = int(val);
    }
    if (label.equals("GPSlatDEG")) 
    {
      GPSlatDEG = float(val);
    }
    if (label.equals("GPSlongDEG")) 
    {
      GPSlongDEG = float(val);
    }
    if (label.equals("GPSaltitudeFEET_MSL")) 
    {
      GPSaltitudeFEET_MSL = float(val);
    }
    if (label.equals("GPScourseDEG")) 
    {
      GPScourseDEG = float(val)-10.0; //conversion of GPS true course to magnetic course (10deg in Colorado)
      if (GPScourseDEG<0)
         GPScourseDEG=GPScourseDEG+360.0;
    }
    if (label.equals("GPSspeedMPH")) 
    {
      GPSspeedMPH = float(val);
    }
    if (label.equals("GPSspeedKNOTS")) 
    {
      GPSspeedKNOTS = float(val);
    }
  }
}

