class cubeRotate {
 float x;
 float y;
 float z;
 float sizer;
 float offset;
 float theta;
 float increment;
 float t;
 
 //constructor
 cubeRotate (float tempX, float tempY, float tempZ, float tempSizer, float tempOffset, float tempTheta, float tempIncrement, float tempT) {
  x=tempX;
  y=tempY;
  z=tempZ;
  sizer=tempSizer;
  offset=tempOffset;
  theta=tempTheta;
  increment=tempIncrement;
  t=tempT;
   
 }
 
 //methods
 
 void run () {
  pushMatrix();
  translate(x, y, z); //translate the center point
  rotate(theta);
  rotateY(theta);
  translate(0, offset, 0); //move from the center
  stroke (255, 100, 100);
  fill (map (sizer, 10, 50, 0, 360), 100-noise(t)*50, 100);
  box(sizer);
  popMatrix();
  theta+=increment;
  t+=.2;
   
 }
  
  
}
