void temp()
{

    if (BAROtemperatureDEGF<=32)
    {    
      fill(0);
      rect(xErrorFlag, 550, 120, 20);
      fill(255, 0, 0);
      text("FAIL", 36, 738);
      textSize(20);
      text("BAROMETER", xErrorFlag, 567);
    }
    else { 
   textSize(20);
fill(255);   
      text(BAROtemperatureDEGF, 42, 738);

    }
}
