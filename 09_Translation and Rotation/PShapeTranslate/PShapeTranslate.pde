PShape s; //declare shape variable
float theta;

void setup() {
  size (600, 600);
  //load shape file
  s =loadShape("shape.svg");
  s.disableStyle(); //disable style to allow for changes in Processing
  colorMode(HSB, 360, 100, 100);
  blendMode(MULTIPLY); //try different blending modes
  noStroke();
}


void draw () {
  background (0, 0, 100);

  for (int i=0; i<20; i++) {
    fill (360/20*i, 100, 100);
    pushMatrix();
    translate (width/2, height/2);
    rotate (TWO_PI/20*i+theta);
    shape (s, sin(theta+i*PI/8)*100, 0, 100, 100);
    popMatrix();
  }

  theta+=.05;
}
