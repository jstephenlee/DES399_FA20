//simple sketch to show use of conditionals

void setup () {
  size (400, 400);
}

void draw () {
  noStroke();
  background(0);
  //multiple conditions use &&

  //if mouse is in the upper left corner, draw a white square
  if (mouseX<width/2 && mouseY<height/2) {
    fill(255);
    rect (0, 0, width/2, height/2);
  }

  //if mouse is in the upper right corner, draw a red square
  else if (mouseX>width/2 && mouseY<height/2) {
    fill(255, 0, 0);
    rect (width/2, 0, width/2, height/2);
  }

  //if mouse is in the lower left corner, draw a green square
  else if (mouseX<width/2 && mouseY>height/2) {
    fill(0, 255, 0);
    rect (0, height/2, width/2, height/2);
  }

  //if mouse is in the lower right corner, draw a blue square
  else if (mouseX>width/2 && mouseY>height/2) {
    fill(0, 0, 255);
    rect (width/2, height/2, width/2, height/2);
  }
}
