float t =0;
float increment=.1; //a larger increment will create greater variance in noise values

void setup () {
  size(960, 540); 
  frameRate(4);
}

void draw() {
  background(255);
  
  //y value changes with randomness
  beginShape(); 
  for (int i=0; i<=width; i+=5) {
    vertex (i, height/3+random(20));
  }
  endShape();

//y value changes with noise
  beginShape(); 
  for (int i=0; i<=width; i+=5) {
    vertex (i, height/3*2+noise(t)*20);
      t+=increment;
      println(noise(t));
  }
  endShape();
  

}
