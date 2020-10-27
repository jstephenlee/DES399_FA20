//declare and create
arcDraw [] arcArray = new arcDraw [100];



void setup () {
  size (800, 800);
  strokeCap(SQUARE);
  //initialize the array
  for (int i=0; i<arcArray.length; i++) {
    arcArray[i] = new arcDraw (color(random(255), random(255), random(255)), random(width), height/2, random(50, 550), random(PI/2), random(PI/2, PI), random(PI/64));
  }
}


void draw () {
  background (0);
  noFill ();

  for (int i=0; i<arcArray.length; i++) {
    arcArray[i].run();
  }
}
