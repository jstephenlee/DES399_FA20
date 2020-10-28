//import library
import controlP5.*;
ControlP5 cp5;

float diameter=100;

void setup () {
  size (800, 800);
  
  cp5 = new ControlP5(this);
  
   cp5.addSlider("diameter")
     .setPosition(100,50)
     .setRange(0, 800)
     ;
}




void draw() {
  //make a circle in the center
  background (0);
  
  ellipse (width/2, height/2, diameter, diameter);
  
}
