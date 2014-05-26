/*
QuadCopter Cockpit Display Program
 Developed by 
 Castle View High School 
 Engineering IV, Spring 2014
 Students:
 Thomas Brink
 Daniel Costello
 Alan Kopp
 Max Maroney
 Josh Pederson
 Meg Shapiro
 Bobby Thornbrugh
 Cameron Vogel
 Teacher / Mentor:
 Robert Hazlehurst
 */

import processing.serial.*;
PImage pfdImage;
PImage compassCardImage;
PImage gpsImage;
PImage mapImage;
Serial myPort;
int COMPheadingDEG;
int BAROtemperatureDEGF;
int BAROaltitudeFEET_MSL;
int BAROaltitudeFEET_AGL;
float GPSaltitudeFEET_MSL;
float GPSaltitudeFEET_MSLinitial;
float GPSaltitudeFEET_AGL;
float GPSspeedMPH;
float GPSspeedKNOTS;
float GPScourseDEG;
float GPSlatDEG;
float GPSlongDEG;
int time;
int xErrorFlag=700;
BufferedReader reader;
String line;
int [] cords=new int[8];
int circle=1;
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
int b; // variable for ball drop
void setup()
{

  size(1350, 716); // PFD alone fits dimensions of 1027, 743
  println(Serial.list());
  pfdImage = loadImage("G1000_PFD.png");
  compassCardImage = loadImage("heading.png"); 
  gpsImage = loadImage("gps.png");
  mapImage = loadImage("map.png");
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 57600);
  myPort.bufferUntil(',');
  reader = createReader("Qdata.txt");

}

void draw ()
{
  rect(0, 0, 1350, 716);
  fill(255, 255, 255);
  image(pfdImage, 0, 0);
  textSize(18);


  temp();
  clock();
  altitude();
  heading();
  course();
  speed();
  mapImport();
//  drop();
}


