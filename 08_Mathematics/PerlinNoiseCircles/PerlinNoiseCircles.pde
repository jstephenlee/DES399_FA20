float t =0;
float increment=.1; //a larger increment will create greater variance in noise values

void setup () {
  size(960, 540); 
  //frameRate(4);
}

void draw() {
  background(5);
  noStroke();
  t+=.01; //adjust t  
  for (int i=0; i<=width; i+=60) {
    for (int j=0; j<=height; j+=60) {
      fill(noise(t)*255, noise(t+increment*i)*255, noise(t+increment*j)*255);
      ellipse (i, j, noise(t)*60, noise(t)*60);
    }
  }
}
