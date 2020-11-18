//sketch using keyboard input with sliders for text display

PFont f;
float theta;
float thetaIncrement;
int num;

import controlP5.*;

ControlP5 cp5;

float sizer;
float leading;
float kerning;

// Variable to store text currently being typed
String typing = "";


void setup() {
  size(960, 540);
  f = createFont("UbuntuMono-B.ttf", 16);

  cp5 = new ControlP5(this);

  // add a horizontal sliders, the value of this slider will be linked
  cp5.addSlider("sizer")
    .setPosition(100, 50)
    .setRange(1, 255)
    .setValue(100)
    ;

  cp5.addSlider("thetaIncrement")
    .setPosition(100, 80)
    .setRange(0, .2)
    .setValue(.1)
    ;

  cp5.addSlider("num")
    .setPosition(100, 110)
    .setRange(1, 8)
    .setValue(2)
    ;

  cp5.addSlider("leading")
    .setPosition(100, 140)
    .setRange(-50, 100)
    .setValue(0)
    ;

  cp5.addSlider("kerning")
    .setPosition(100, 170)
    .setRange(-50, 100)
    .setValue(0)
    ;
}

void draw() {
  background(0, 0, 255);
  int indent = 50;
  fill (255);
  textFont(f, sizer/2);

  textAlign(CENTER);
  for (int i=0; i<typing.length(); i++) {
    for (int j=0; j<num; j++) {
      pushMatrix();
      translate(indent+i*(width/typing.length()+kerning), indent+j*sizer+j*leading);

      //another version with sine wave
      //translate(indent+i*(width/typing.length()+kerning)+sin(theta+i+j)*sizer/2, indent+j*sizer+j*leading+sin(theta+i)*sizer);
      text(typing.charAt(i), 0, 0);
      popMatrix();
    }
  }
  theta+=thetaIncrement;
}

void keyPressed() {
  // If the return key is pressed, save the String and clear it
  if (key == '\n' ) {

    // A String can be cleared by setting it equal to ""
    typing = "";
  } else {
    // Otherwise, concatenate the String
    // Each character typed by the user is added to the end of the String variable.
    typing = typing + key;
  }
}
