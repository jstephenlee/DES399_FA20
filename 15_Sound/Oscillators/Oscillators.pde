import processing.sound.*;

SinOsc osc1;
TriOsc osc2;
SawOsc osc3;
SqrOsc osc4;
Pulse osc5;

void setup() {
  size(400, 200);



  osc1 = new SinOsc(this);
  //osc1.play();
  osc1.amp(.5);

  osc2 = new TriOsc(this);
  //osc2.play();
  osc2.amp(.5);

  osc3 = new SawOsc(this);
  //osc3.play();
  osc3.amp(.5);

  osc4 = new SqrOsc(this);
  //osc4.play();
  osc4.amp(.5);

  osc5 = new Pulse(this);
  //osc5.play();
  osc5.amp(.5);
}

void draw() {
  background(255);

  //float room = map(mouseX, 0, width, 0, 1);
  //reverb.room(room);

  float freq = map(mouseX, 0, width, 100, 850);
  osc1.freq(freq);
  osc2.freq(freq);
  osc3.freq(freq);
  osc4.freq(freq);
  osc5.freq(freq);

  ellipse(mouseX, 100, 32, 32);
}

void keyPressed () {
  //stop all osc
  osc1.stop();
  osc2.stop();
  osc3.stop();
  osc4.stop();
  osc5.stop();
  //play only one osc
  if (key=='1') { 
    osc1.play();
  }
  if (key=='2') { 
    osc2.play();
  }
  if (key=='3') { 
    osc3.play();
  }
  if (key=='4') { 
    osc4.play();
  }
  if (key=='5') { 
    osc5.play();
  }
}
