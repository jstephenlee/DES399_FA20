/*
jsl
 pattern tool written with functions
 */

int sizer=50;

void setup() {
  size (1000, 600);
  pixelDensity(2);
  frameRate(1);
}

void draw() {
  background (200);
  stroke(250, 250, 50);

  //use nested for loops to create a pattern
  for (int i=0; i<=width; i+=sizer) {
    for (int j=0; j<=height; j+=sizer) {
      float r=random(2);
      if(r<1) {
      bullseye(i, j, sizer, 5, 10);
      }
      
      else {
       triangleRepeat(i, j, sizer/2, 5, 5); 
      }
    }
  }
}
//arguments and parameters must match in number and type
void bullseye (float x, float y, float s, float increment, int repeat) {
  for (int i=0; i<=repeat; i++) {
    fill (map(i, 0, 10, 255, 0), 200, map(i, 0, repeat, 0, 255));
    ellipse (x, y, s-i*increment, s-i*increment);
  }
}

void triangleRepeat (float x, float y, float s, float offset, int repeat) {
  for (int i=0; i<=repeat; i++) {
    fill (map(i, 0, 10, 255, 0), 200, map(i, 0, repeat, 0, 255));
    triangle (x, y-s+i*offset, x-s+i*offset, y+s-i*offset, x+s-i*offset, y+s-i*offset);
  }
}

void keyPressed () {
  saveFrame("frame-######.jpg"); 
}
