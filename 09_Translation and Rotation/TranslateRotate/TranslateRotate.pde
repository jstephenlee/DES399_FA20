
void setup () {
  size (500, 500);
  rectMode(CENTER);
}


void draw () {
  background(255);
  fill (255, 0, 0);

  for (int i=0; i<8; i++) {
    pushMatrix();
    translate (width/2, height/2);

    rotate (TWO_PI/8*i);
    translate (100, 0);
    rect (0, 0, 200, 20);
    popMatrix();
  }
}
