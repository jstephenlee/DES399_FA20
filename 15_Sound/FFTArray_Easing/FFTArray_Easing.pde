// Mic input with easing using objects

import processing.sound.*;

FFT fft;
int bands = 256/2;
AudioIn input;

SBar [] sbars = new SBar [bands/4];
//SBar s = new SBar (100, 50, .5, 0);

//float easing = 0.5;

float d1, d2;

void setup() {
  size(512, 270);

  input = new AudioIn(this, 0);

  // start the Audio Input
  input.start();

  // Create and patch the FFT analyzer
  fft = new FFT(this, bands);
  //fft.input(song); //swap input from song to input

  fft.input(input);


  for (int i=0; i<sbars.length; i++) {
    sbars[i] = new SBar(width/sbars.length*i, height/2, width/sbars.length, .5, 0);
  }
}

void draw() {
  background(50);

  // Get the overall volume (between 0 and 1.0)

  fft.analyze();


  for (int i=0; i<sbars.length; i++) {
    sbars[i].vol=fft.spectrum[i];
    sbars[i].run();
  }

}
