//gravity example

//declare and initialize variables
float y=0;
float diameter=20;

float speed=0;
float gravity=.1;

void setup() {
size (400, 400);
}

void draw (){
  background(255);
  
  fill(0);
  noStroke();
  ellipse(width/2, y, diameter, diameter);
  
  y+=speed;
  speed+=gravity;
  //add diameter/2 to make the edge of the circle touch the edge
  if (y+diameter/2>height) {
   speed=speed *-.7; //lower the value to make the bounce smaller
  }
  
  
}
