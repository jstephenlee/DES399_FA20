/*
fft example arranged in a circle responding to live sound input
*/

import processing.sound.*;

AudioIn input;

FFT fft;
int bands = 512/2;


float theta;
float t;

void setup() {
  size(960, 540);

  colorMode(HSB, 360, 100, 100);

  input = new AudioIn(this, 0);

  // start the Audio Input
  input.start();

  // Create and patch the FFT analyzer
  fft = new FFT(this, bands);
  fft.input(input);
}

void draw() {
  background(0, 0, 10);

  fft.analyze();

  for (int i = 0; i < bands; i++) {
    stroke(map(i, 0, bands, 0, 360), 100, 100);
    pushMatrix();
    translate(width/2, height/2);
    rotate(TWO_PI/bands*i); //incrementally rotate each line
    rotate(theta); //rotate the whole shape
    // The FFT range is between 0 and 1, we map it to pixels
    float y = map(fft.spectrum[i], 0, 1, 10, 800);
    //line(width/bands*i, height * 0.75, width/bands*i, y);
    line(0, 100-noise(t)*50, 0, 100+y*2);
    noFill();
    //ellipse(0, 200+y, 10, 10);
    popMatrix();
  }

  theta+=fft.spectrum[10]*10; //theta will increase with the sound 
  t+=.1; //increment t for noise
}
