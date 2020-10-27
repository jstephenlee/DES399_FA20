//global variables
int sizer=10; //declare and initialize

void setup () {
  size(960, 540);
  background (0);
  frameRate(30);
  pixelDensity(2); //doubles the pixels
}

void draw () {
  noStroke();
  fill (random(255), random(255), random(255), 100); //random color
  rect (random(width), random(height), sizer, sizer); //randomly placed rectangle
  println(sizer); //print sizer to console
  sizer=sizer+2; //update the value of sizer


  //condition to reset sizer to smaller value
  if (sizer>400) {
    sizer=10;
  }
}
