void altitude()
{   
 
 if (millis() < 5000)
{
 GPSaltitudeFEET_MSLinitial = GPSaltitudeFEET_MSL;
} 
GPSaltitudeFEET_AGL = GPSaltitudeFEET_MSL - GPSaltitudeFEET_MSLinitial;
String sGPSaltitudeFEET_AGL = nf(GPSaltitudeFEET_AGL,3,0);
String sGPSaltitudeFEET_MSL = nf(GPSaltitudeFEET_MSL,4,0);

  if (BAROaltitudeFEET_AGL<=-50)
  {
    fill(0);
    rect(xErrorFlag, 550, 120, 20);
    fill(255, 0, 0);
    text("FAIL", 833, 339);
    textSize(17);
    text("BAROMETER", xErrorFlag, 537);
  }
  else 
  {
    text(BAROaltitudeFEET_AGL, 710, 293);
    textSize(17);
    fill(255);
  }
  {//MSL
    if (BAROaltitudeFEET_MSL<-1)
    {
      textSize(20);
      fill(0);
      rect(xErrorFlag, 550, 120, 20);
      fill(255, 0, 0);
      text("FAIL", 833, 150);
      text("BAROMETER", xErrorFlag, 567);
    }
    else {
      fill(#00FDFF);
      textSize(20);
      text(BAROaltitudeFEET_MSL, 715, 107);
    }
  }
  
//    if (GPSaltitudeFEET_AGL<=-50)
//  {
//    fill(0);
//    rect(830, 550, 120, 20);
//    fill(255, 0, 0);
//    text("FAIL", 833, 339);
//    textSize(17);
//    text("BAROMETER", 810, 537);
//  }
//  else 
//  {
//    text(sGPSaltitudeFEET_AGL, 710, 293);
//    textSize(17);
//    fill(255);
//  }
//  {//MSL
//    if (GPSaltitudeFEET_MSL<-1)
//    {
//      textSize(20);
//      fill(0);
//      rect(830, 550, 120, 20);
//      fill(255, 0, 0);
//      text("FAIL", 833, 150);
//      text("BAROMETER", 830, 567);
//    }
//    else {
//      fill(#00FDFF);
//      textSize(20);
//      text(sGPSaltitudeFEET_MSL, 715, 107);
//    }
//  }
  
}

