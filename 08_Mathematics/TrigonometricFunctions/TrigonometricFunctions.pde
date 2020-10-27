//simple sketch using trigonometric functions to control movement

float theta;
float sizer=200;

void setup() {
  size (960, 540);
}

void draw() {
  background (255);
  fill (255, 0, 0);
  //using sine 
  ellipse (width/5, height/2+sin(theta)*sizer, 100, 100);

  //using cosine
  ellipse (width/2, height/2+cos(theta)*sizer, 100, 100);

  //using tangent
  ellipse (width/5*4, height/2+tan(theta)*sizer, 100, 100);
  theta+=.05;
}
