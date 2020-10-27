//simple bouncing ball example

//declare and initialize variables
float y=200;
float diameter=20;

float speed=2;


void setup() {
  size (400, 400);
}

void draw () {
  background(255);

  fill(0);
  noStroke();
  ellipse(width/2, y, diameter, diameter);

  y+=speed;
//use || to indicated OR
  if ((y>height-diameter/2 ) || (y<diameter/2)) {
    //multiply speed by a negative value to change direction
    speed=speed *-1;
  }
}
