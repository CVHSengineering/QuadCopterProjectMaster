void heading()
{  if (COMPheadingDEG <0)
  {    
    fill(0);
    rect(xErrorFlag, 570, 120, 20);
    fill(255, 0, 0);
    textSize(35);
    text("FAIL", 428, 430);
    textSize(20);
    text("COMPASS", xErrorFlag, 587);
  }

  else { 
    textSize(34);
    fill(255);
    text(COMPheadingDEG, 428, 430);
    {//Heading
      pushMatrix();
      translate(464, 587);
      rotate(radians(-COMPheadingDEG-13));
      translate(-compassCardImage.width/2, -compassCardImage.height/2);
      image(compassCardImage, 0, 0);
      popMatrix();
    }
  }
}
