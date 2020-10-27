class arcDraw {
  //declare variables
  color c;
  float x;
  float y;
  float diameter;
  float theta1;
  float theta2;
  float increment;
  float s =random(10);
  //constructor
  arcDraw (color tempC, float tempX, float tempY, float tempDiameter, float tempTheta1, float tempTheta2, float tempIncrement) {
    c=tempC;
    x=tempX;
    y=tempY;
    diameter=tempDiameter;
    theta1=tempTheta1;
    theta2=tempTheta2;
    increment=tempIncrement;
  }

  //methods
  void run () {
    strokeWeight(s);
    stroke (c);
    arc (x, y, diameter, diameter, theta1, theta2);
    theta2+=increment;

    if (theta2>theta1+TWO_PI) {
      theta2-=TWO_PI;
    }
  }
}
