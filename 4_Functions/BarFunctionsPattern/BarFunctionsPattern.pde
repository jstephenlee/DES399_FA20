//using functions to create a pattern with horizontal and vertical bars

import processing.pdf.*;

boolean record;

int cellsize = 80;

float r;
color c;
// return type functionName(parameters)
void setup () {
  size(960, 540);
  frameRate(1);
}

void draw () { 
  if (record) {
    beginRecord(PDF, "frame-####.pdf");
  }
  noStroke();
  background (#D53338);
  for (int i=0; i<width; i+=cellsize) {
    for (int j=0; j<height; j+=cellsize) {
      r=random(2);
      float rc = random(2);
      if (rc<1) {
        c = color(#57238A);
      } else {
        c = color(#8B52C3);
      }

      if (r<1) {
        //arguments are values that are passed into a function
        hbars (i, j, int(random(50)), c);
      } else {

        vbars (i, j, int(random(50)), c);
      }
    }
  }

  if (record) {
    endRecord();
    record = false;
  }
}



void hbars (int i, int j, int num, color c) {
  for (int n=0; n<num; n+=2) {
    fill (c);
    rect (i, j+n*cellsize/num, cellsize, cellsize/num);
  }
}

//you can use different names when you use parameters
//type must match up
void vbars (int x, int y, int num, color c) {
  for (int n=0; n<num; n+=2) {
    fill (c);
    rect (x+n*cellsize/num, y, cellsize/num, cellsize);
  }
}


// Use a keypress so thousands of files aren't created
void mousePressed() {
  record = true;
}
