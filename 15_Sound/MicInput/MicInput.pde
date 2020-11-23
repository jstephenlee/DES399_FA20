//mic input 

import processing.sound.*;

//declare objects
AudioIn input;
Amplitude analyzer;

void setup () {
  size(500, 500); 

  //start listening to microphone
  //create an Audio Input and grab the first channel
  input=new AudioIn(this, 0);

  //start the Audio Input
  input.start();

  //create a new Amplitude analyzer
  analyzer = new Amplitude(this);

  //connect the input to the volume analyzer
  analyzer.input(input);
}


void draw () {
  //get the volume (0–1.0)
  float volume = analyzer.analyze();

  println(volume);
  background (0);
  
  float r= map(volume, 0, 1, 100, 255);
  fill (r, 50, 100);
  
  float diameter=map(volume, 0, .2, 10, 400);
  ellipse (width/2, height/2, diameter, diameter);
}
