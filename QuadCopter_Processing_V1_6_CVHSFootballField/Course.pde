void course()
{  
  String sGPScourseDEG = nf(int(GPScourseDEG),3);
  
  if (GPScourseDEG<=0)
  {    
    fill(0);
    rect(xErrorFlag, 590, 120, 20);
    fill(255, 0, 0);
    textSize(20);
    text("FAIL", 700, 23);
    text("GPS", xErrorFlag, 607);
  }
  else {    
    
      pushMatrix();
      translate(464, 587);
      rotate(radians(GPScourseDEG-COMPheadingDEG-13));
      translate(-gpsImage.width/2, -gpsImage.height/2);
      image(gpsImage, 0, 0);
      popMatrix();
    
    textSize(20);
    fill(#FF00FF);
    text(sGPScourseDEG, 700, 23);
  }
}
