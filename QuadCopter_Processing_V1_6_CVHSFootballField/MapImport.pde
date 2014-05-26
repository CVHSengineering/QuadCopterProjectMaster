void mapImport() 
{
  int xshift = 850;
  image(mapImage, xshift, 0);
  try {
    line = reader.readLine();
  } 
  catch (IOException e) {
    e.printStackTrace();
    line = null;
  }
  if (line == null) {
  }
  else {
    String[] pieces = split(line, ",");
    ylat = float(pieces[0]);
    y2 = float(pieces[1]);
    lat2 = float(pieces[2]);
    xlng = float(pieces[3]);
    x2 = float(pieces[4]);
    lng2 = float(pieces[5]);
  }
  actlat = GPSlatDEG;
  actlng = (GPSlongDEG)*-1;
  actx=x2-((actlng-lng2)*(xlng));
  acty=y2-((actlat-lat2)*(ylat));
  //  text(ylat, 50, 140);
  //  text(y2, 50, 160);
  //  text(lat2, 50, 180);
  //  text(xlng, 50, 200);
  //  text(x2, 50, 220);
  //  text(lng2, 50, 240);
  textSize(12);
  text(actx, 200+xshift, 20);
  text(acty, 200+xshift, 40);
  fill(255,3,209);
  ellipse(actx+xshift, acty, 10, 10);
}

