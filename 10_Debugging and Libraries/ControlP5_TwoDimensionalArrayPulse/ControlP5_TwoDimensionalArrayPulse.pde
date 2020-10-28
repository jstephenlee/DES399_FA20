//import library

import controlP5.*;
ControlP5 cp5;

//declare variables to be used in sliders
float sizer;
float tincrement;
int value;

int cols = 10;
int rows = 10;

//2D array
//declare
Pulse [][] grid;


void setup () {
  size(960, 540);
  //create

  cp5 = new ControlP5(this);

  // add a horizontal sliders, the value of this slider will be linked
  // to variable 'sizer' 
  cp5.addSlider("sizer")
    .setPosition(20, 50)
    .setRange (0, 80)
    .setValue (50)
    ;
  // add a horizontal sliders, the value of this slider will be linked
  // to variable 'tincrement' 
  cp5.addSlider("tincrement")
    .setPosition(20, 80)
    .setRange (0, .5)
    .setValue (.1)
    ;
      // add a horizontal sliders, the value of this slider will be linked
  // to variable 'value' 
      cp5.addSlider("value")
    .setPosition(20, 110)
    .setRange (0, 255)
    .setValue (0)
    ;

  grid = new Pulse [cols][rows];
  float xsize= width/cols;
  float ysize = height/rows;
  //initialize
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      //gradient color
      //color c = color (map(i, 0, cols, 0, 255), map(j, 0, rows, 0, 255), map(i+j, 0, rows+cols, 255, 0));
      //random color
      color c = color (random(255), random(100, 255), random(200, 255));
      grid[i][j] = new Pulse (i*xsize+xsize/2, j*ysize+ysize/2, 40, j, random(.1), c);
    }
  }
}

void draw() {
  background (value);
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      //access data in objects and reset with varaiable values
      grid[i][j].diameter = sizer;
      grid[i][j].increment = tincrement;
      grid[i][j].run();
    }
  }
}

class Pulse {
  //data
  float x;
  float y;
  float diameter;
  float t;
  float increment;
  //color
  color c;

  //constructor
  Pulse (float tempX, float tempY, float tempDiameter, float tempT, float tempIncrement, color tempC) {
    x= tempX;
    y=tempY;
    diameter=tempDiameter;
    t=tempT;
    increment=tempIncrement;
    c= tempC;
  }

  //functions

  void run () {
    fill (c);
    noStroke();
    ellipse (x, y, diameter+noise(t)*diameter, diameter+noise(t)*diameter);
    t+=increment;
  }
}
