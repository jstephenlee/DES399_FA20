/*
JSL 
pattern drawing with for loops
 */

//global variables for access throughout the sketch

int x = 0; //declare and initialize the variables
int y = 0;
int sizer=20;

float r; //random number variable

//pdf code: https://processing.org/reference/libraries/pdf/index.html
import processing.pdf.*; //import pdf library
boolean record;

void setup () {
  size (960, 540);
  // pixelDensity(2);
  frameRate(1);
  background(10);
}

void draw () {
  
    if (record) {
    // Note that #### will be replaced with the frame number. Fancy!
    beginRecord(PDF, "frame-####.pdf"); 
  }
  background(0);
  // for (initialization condition ; boolean expression; increment)
  //use nested loops to create a grid
  for (int i=0; i<width; i+=sizer) { 
    for (int j=0; j<height; j+=sizer) {
      r=random(2); //use a random value to determine whether a circle or a rectangle is drawn
      fill (x+i/2, y+j/2, 100);  
      if (r<1) {
        rect (x+i, y+j, sizer, sizer);
      } else {
        ellipse (x+i+sizer/2, y+j+sizer/2, sizer, sizer);
      }
    }
  }
    if (record) {
    endRecord();
  record = false;
  }
}


// Use a keypress so thousands of files aren't created
void mousePressed() {
  record = true;
}
