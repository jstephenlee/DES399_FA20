class Ball {
  //declare variables
  color c;
  float x;
  float y;
  float diameter;
  float speed;
  float theta;
  float increment;

  //constructor
  Ball(color tempC, float tempX, float tempY, float tempDiameter, float tempTheta, float tempIncrement) {
    //assign temporary variables to object variables 
    c=tempC;
    x=tempX;
    y=tempY; //technically this value doesn't really matter since we reset it in run
    diameter=tempDiameter;
    theta=tempTheta;
    increment=tempIncrement;
  }

  void run() {
    y=height/2+sin(theta)*height/2;
    theta+=increment;
    fill(c);
    noStroke();
    ellipse(x, y, diameter, diameter);
  }
}
