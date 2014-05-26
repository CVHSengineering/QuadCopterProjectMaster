void speed()
{  
  String sGPSspeedKNOTS = nf(int(GPSspeedKNOTS),3);
  String sGPSspeedMPH = nf(int(GPSspeedMPH),3);
  
  if (GPSspeedKNOTS < 0)
  {    
    fill(0);
    rect(xErrorFlag, 570, 120, 20);
    fill(255, 0, 0);
    textSize(20);
    text("FAIL", 295, 519);
    textSize(20);
    text("GPS", xErrorFlag, 607);
  }

  else 
  { 

    fill(255);
    text(sGPSspeedKNOTS, 175, 477);

  }
  {  if (GPSspeedMPH < 0)
  {    
    fill(0);
    rect(xErrorFlag, 570, 120, 20);
    fill(255, 0, 0);
    textSize(35);
    text("FAIL", 2, 339);
    textSize(20);
    text("GPS", xErrorFlag, 607);
  }

  else 
  { 
    textSize(35);
    fill(255);
    text(sGPSspeedMPH, 160, 293);

  }
  }
}
