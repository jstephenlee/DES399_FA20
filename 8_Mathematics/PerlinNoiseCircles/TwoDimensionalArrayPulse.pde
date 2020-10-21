int cols = 10;
int rows = 10;

//2D array
Pulse [][] grid;


void setup () {
  size(960, 540);
  grid = new Pulse [cols][rows];
  float xsize= width/cols;
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      //color c = color (map (i, 0, cols, 0, 255), 100, map (j, 0, rows, 0, 255));
        color c = color (random(255), random(100, 255), random(200, 255));
      grid[i][j] = new Pulse (i*(xsize)+(xsize)/2, j*(height/rows)+(height/rows)/2, 40, j, map(i, 0, cols, .01, .05), c);
    }
  }
}

void draw() {
  background (0);
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
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
