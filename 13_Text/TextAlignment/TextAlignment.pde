
PFont f;

String s = "Teamwork makes the dream work";

float theta;

void setup() {
  size(960, 540);

  // f= createFont("Georgia", 20); //you can use a system font by just calling its name

  //load a ttf font from the data folder
  //use https://transfonter.org/ to convert to ttf if necessary
  f= createFont("Montserrat-BlackItalic.ttf", 20);
}

void draw() {
  background(255);
  stroke(175);
  line(width/2, 0, width/2, height);
  textFont(f); //specify the font to use
  fill(0);

  //align text left
  textAlign (LEFT) ;
  text(s, width/2, 200);

  //align text right
  textAlign(RIGHT);
  text(s, width/2, 240);

  //align text center
  textAlign(CENTER);
  text(s, width/2, 280);

  //let's adjust position by character
  for (int i=0; i<s.length(); i++) {
    // textAlign() sets the alignment for displaying text. It takes one argument: CENTER, LEFT, or RIGHT.
    textAlign(CENTER);
    text(s.charAt(i), width/4+i*20, height/4*3+sin(theta+i*PI/8)*50);
  }
  theta+=.02; //increment theta
}
