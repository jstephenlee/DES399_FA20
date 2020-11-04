//simple loading and display of an image

PImage img;


void setup () {
 size (600, 800); 
 img=loadImage("stella.png");
}

void draw () {
 //tint (0, 0, 255, 10);

 image (img, mouseX, mouseY); 
  filter (DILATE);
  
}
