Ball myBall; //declare object as a global variable


void setup () {
  size(400, 400);
  color c = #fa8712; // color can hold hexadecimal color values
  myBall = new Ball(c, 100, 100, 20, 5); //initialize object
}

void draw() {
  background(255);
  myBall.move(); //use dot syntax 
  myBall.bounce();
  myBall.display();
  
}
