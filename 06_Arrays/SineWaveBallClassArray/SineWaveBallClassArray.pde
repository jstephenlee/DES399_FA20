//declare array

Ball [] balls = new Ball[200];
void setup () {
  size(800, 400);

  //initialize array
  for (int i=0; i<balls.length; i++) {
    color c = color (i*2, 200-i, 200);
    balls[i] = new Ball(c, width/balls.length*i, height/2, 20, i, .03);
  }
}

void draw () {
  background(255);
  //use a loop to go through the array
    for (int i=0; i<balls.length; i++) {
     balls[i].run(); //use dot syntax 
    }
}
