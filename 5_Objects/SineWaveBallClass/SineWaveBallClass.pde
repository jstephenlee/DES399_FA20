Ball myBall, myBall2; //declare object as a global variable

void setup () {
  size(400, 400);
  color c = #fa8712; // color can hold hexadecimal color values
  myBall = new Ball(c, 100, height/2, 20, 0, .05); //initialize object
  myBall2 = new Ball(c, 300, height/2, 20, PI, .05); //initialize object
}

void draw() {
  background(255);
  myBall.run(); //use dot syntax 
  myBall2.run(); //use dot syntax
}
