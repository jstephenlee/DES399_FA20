//rainbow spirograph sketch

float number=100;
float numberSpeed=-1;
float theta=0;

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100); //change color mode to allow full color range movement
}

void draw() {
  background(255, 0, 10);
  noFill();
  number+=numberSpeed; //update number of elements

  //change direction if conditions are met
  if (number<3 || number>100) {
    numberSpeed*=-1;
  }

  //loop to draw ellipses
  for (int i=0; i<number/2; i++) {
    stroke(map(i, 0, number, 0, 720), 200, 100+map(i, 0, number, 0, 260));
    pushMatrix();
    translate (width/2, height/2);
    rotate(TWO_PI/number*i);//set a rotation based on i
    ellipse (0, 0, 500+sin(theta)*50, 50+cos(theta)*50);
    popMatrix();
    theta+=.003; //increment theta
  }
}
