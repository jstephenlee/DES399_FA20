String s = "OUTPUT";
PFont f;

float theta;

//float t;
void setup () {
  size (960, 540);
  f = createFont("UbuntuMono-B.ttf", 30); //initialize
}

void draw () {
  background (0);
  textFont(f, 200);
  fill (255);


  for (int i=0; i<s.length(); i++) {
    pushMatrix();
    // textAlign() sets the alignment for displaying text. It takes one argument: CENTER, LEFT, or RIGHT.
    textAlign(CENTER);
    translate(width/8+i*100+i*map(sin(theta), -1, 1, 0, 100), height/2);
    rotate(map(sin(theta+i), -1, 1, -PI/4, PI/4));
    scale (map(sin(theta/4+i), -1, 1, .5, 1.75));
    text(s.charAt(i), 0, 0);
    popMatrix();
  }

  theta+=.1;
}
