/*
JSL
 basic drawing tool with mouse tracking, keypresses, variables, random values, and frame saving
 */

//global variables
int sizer=50; //declare and initialize variables
int change=10;

void setup() {
  size(960, 540);
  frameRate(30);
  background (50, 50, 255);
  pixelDensity(2); //doubles the pixels
}

void draw () {
  //conditional statements 
  if (keyPressed) { 

    if (key==' ') {
      background(50, 50, 255);
    }
    if (key=='r') {  
      fill (random(150, 255), 0, 0);
      ellipse (mouseX, mouseY, sizer, sizer);
    }

    if (key=='g') {
      fill (0, random(200, 255), 0);
      rect (mouseX-sizer/2, mouseY-sizer/2, sizer, sizer);
    }

    if (key=='b') {
      fill (0, 0, random(200, 255));
      //draw a shape (triangle in this case---- I know there is a triangle function but doing it with vertexes)
      beginShape();
      vertex (mouseX-sizer/2, mouseY+sizer/2);
      vertex (mouseX+sizer/2, mouseY+sizer/2);
      vertex (mouseX, mouseY-sizer/2);

      endShape(CLOSE);
    }

    if (key=='s') {
      //https://processing.org/reference/saveFrame_.html
      //default is to save as a tif
      saveFrame("frame-######.jpg");
    }
  }

  //adjust sizer
  sizer+=change;

  if (sizer>100) {
    change=change*-1;
    //change*=-1;
  }

  if (sizer<20) {
    change=change*-1;
  }
}
