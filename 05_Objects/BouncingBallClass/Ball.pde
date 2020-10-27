class Ball {
  //declare variables
  color c;
  float x;
  float y;
  float diameter;
  float speed;

  //constructor
  Ball(color tempC, float tempX, float tempY, float tempDiameter, float tempSpeed) {
    //assign temporary variables to object variables 
    c=tempC;
    x=tempX;
    y=tempY;
    diameter=tempDiameter;
    speed=tempSpeed;
  }

  void move() {
    y+=speed;
  }

  void bounce() {
    //use || to indicated OR
    if ((y>height-diameter/2 ) || (y<diameter/2)) {
      //multiply speed by a negative value to change direction
      speed=speed *-1;
    }
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(x, y, diameter, diameter);
  }
}
