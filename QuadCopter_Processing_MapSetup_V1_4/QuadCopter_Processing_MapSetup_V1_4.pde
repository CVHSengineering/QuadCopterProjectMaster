/*

This program sets up the lat long to pixle coordinates for the map display. When the program is run a picture of the imported map will appear. 
Next use the Mouse to click on two known points of latitide which are entered in the program below as actlat and actlng.
The first point should be to the left of the second point and the points must be at different levles on the y axis.
After the program runs it will write the needed values to .txt file named Qdata.txt yom must take this file and copy it into the main quad copter program to
ensure that the map works correctly.

Be sure to change the loadImage command to contain the correct file for the map you are desplaying. The file must be imported before it will work!
You must also import the map pictue to the main quad copter progrsam as well.
*/



int [] cords=new int[8];
int circle;
PImage img;
float x1;
float y1;
float x2;
float y2;
float lat1;
float lng1;
float lat2;
float lng2;
float dlat;
float dlng;
float dx;
float dy;
float xlng;
float ylat;
float acty;
float actx;
float actlng;
float actlat;
PrintWriter textFile;
void setup()
{  
  textFile = createWriter("files/Qdata.txt");
  circle=1;
  size(1270, 900);
  img = loadImage("map.png");
}

void draw()
{ 

  background(255);
  image(img, 0, 0);
  fill(0);   

  if (mousePressed==true&&circle==1) {
    ellipse(mouseX, mouseY, 10, 10);
    cords[0]=mouseX;
    cords[1]=mouseY;
    delay(500);
  }
  if (mousePressed==true&&circle==2) {
    ellipse(mouseX, mouseY, 10, 10);
    cords[2]=mouseX;
    cords[3]=mouseY;
    delay(500);
  }
  if (mousePressed==true) {
    circle=circle+1;
  }
  //  text("X1", 580, 20);
  //  text(cords[0], 600, 20);
  //  text("Y1", 580, 40);
  //  text(cords[1], 600, 40);
  //  text("X2", 580, 80);
  //  text(cords[2], 600, 80);
  //  text("Y2", 580, 100);
  //  text(cords[3], 600, 100);
  x1 = cords[0];
  y1 = cords[1];
  x2 = cords[2];
  y2 = cords[3];
  lat1 = 39.996562;
  lng1 = 104.915577;
  lat2 = 39.994465;
  lng2 = 104.913306;
  dx=(x2-x1);
  dy=(y2-y1);
  dlat=lat1-lat2;
  dlng=lng1-lng2;
  ylat=dy/dlat;
  xlng=dx/dlng;

  if (xlng >0 && ylat>0)
  {
    textFile.print( ylat );
    textFile.print( "," );
    textFile.print( y2 );
    textFile.print( "," );
    textFile.print( lat2 );
    textFile.print( "," );
    textFile.print( xlng ); 
    textFile.print( "," );
    textFile.print( x2 );
    textFile.print( "," );
    textFile.print( lng2 );
    textFile.println( "," );
    if ( frameCount >= 10 ) 
    {  
      textFile.flush();  
      textFile.close(); 
      exit();
    }
  }
}

