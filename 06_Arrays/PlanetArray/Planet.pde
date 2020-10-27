class Planet {
  //data
  color c;
  float x;
  float y;
  float diameter;
  float distance;
  float theta;
  float increment;
  
  
  //constructor 
  Planet (color tempC, float tempX, float tempY, float tempDiameter, float tempDistance, float tempTheta, float tempIncrement){
    c=tempC;
    x=tempX;
    y=tempY;
    diameter=tempDiameter;
    distance=tempDistance;
    theta=tempTheta;
    increment=tempIncrement;
  }
  
  //methods
  void run() {
    noStroke();
    fill (c);
    ellipse (x+sin(theta)*distance, y+cos(theta)*distance, diameter, diameter); 
    theta+=increment;
  }
  
}
