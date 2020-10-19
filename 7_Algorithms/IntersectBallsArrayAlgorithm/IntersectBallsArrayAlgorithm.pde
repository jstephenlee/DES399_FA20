/*sketch based off of Learning Processing code
 http://learningprocessing.com/examples/chp10/example-10-03-intersection
 use an array and object to change color on intersection
 */

//declare and initialize array
Ball [] ballArray = new Ball [150]; 

void setup() {
  size(960, 540);
  //pixelDensity(2);

  //initialize the objects
  for (int i=0; i<ballArray.length; i++) {
    ballArray[i] = new Ball (random(10, 30));
  }
  //frameRate(30);
}

void draw() {
  background(100, 160, 200);

  //call functions on array items
  for (int i =0; i<ballArray.length; i++) { 

    ballArray[i].move(); //move the ball

    for (int j=0; j<ballArray.length; j++) {
      //check conditions to see if intersection occurs
      if (i==j) {
        //don't do anything if i and j are equal
      } else {
        //check intersection
        //use an object as an argument
        if (ballArray[i].intersect(ballArray[j])) { 
          ballArray[i].highlight();
          ballArray[j].highlight();
          stroke(0);
          strokeWeight (.5);
          line(ballArray[i].x, ballArray[i].y, ballArray[j].x, ballArray[j].y);
        }
      }
    }
    ballArray[i].display(); //draw the ball
  }
  println(frameRate);
}
