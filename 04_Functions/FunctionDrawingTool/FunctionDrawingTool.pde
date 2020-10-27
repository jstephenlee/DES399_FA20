//drawing tool with functions
int sizer=50;

void setup() {
  size (1000, 600);
  pixelDensity(2);
  background(200);
}

void draw () {

  stroke(250, 250, 50);

  if (keyPressed) {
    if (key=='c') {
      bullseye(mouseX, mouseY, sizer, 5, 10);
    }

    if (key=='t') {
      triangleRepeat(mouseX, mouseY, sizer/2, 5, 5);
    }

    if (key==' ') {
      background (200);
    }
    
    if (key=='s') {
      saveFrame("frame-######.jpg"); 
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
