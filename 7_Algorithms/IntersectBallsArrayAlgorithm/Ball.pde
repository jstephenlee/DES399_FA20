// based off Example 10-3: Bouncing ball with intersection with some modifications

class Ball {

  float r; // radius
  float x= random(width);
  float y= random(height);
  float xspeed = random (-2, 2);
  float yspeed = random(-2, 2);
  color c = color(150, 220+random(10), 200, 80);

  // Constructor
  Ball(float tempR) {
    r = tempR;
  }

  void move() {
    x += xspeed; // Increment x
    y += yspeed; // Increme//mnt y

    // Check horizontal edges
    if (x > width || x < 0) {
      xspeed *= - 1;
    }

    // Check vertical edges
    if (y > height || y < 0) {
      yspeed *= - 1;
    }
  }

  // Whenever the balls are touching, this highlight() function is called 
  // and the color is darkened.
  void highlight() { 
    c = color(220+random(30), 190, 120+random(50), 150);
  }

  // Draw the ball
  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, r*2, r*2);
    // After the ball is displayed, the color is reset back to a darker gray.
    c = color(150, 220+random(10), 200, 80);
  }

  // A function that returns true or false based on whether two circles intersect
  // If distance is less than the sum of radii the circles touch
  boolean intersect(Ball b) {

    // Objects can be passed into functions as arguments too! 
    float distance = dist(x, y, b.x, b.y); // Calculate distance

    // Compare distance to sum of radii
    if (distance < r + b.r) {
      return true;
    } else {
      return false;
    }
  }

}
