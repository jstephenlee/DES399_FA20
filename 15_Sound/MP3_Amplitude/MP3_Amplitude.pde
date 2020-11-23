
// Play an mp3 and analyze the sound 

import processing.sound.*;

// A Sample object (for a sound)
SoundFile song;

Amplitude analyzer;


float easing = 0.2;
float vol1, vol2;

void setup() {
  size(500, 500);
  song = new SoundFile(this, "Split_Phase_-_35_-_Lockdown.mp3");
  song.loop();

  // create a new Amplitude analyzer
  analyzer = new Amplitude(this);

  // Patch the input to an volume analyzer
  analyzer.input(song);
}

void draw() {
  background(0);

  // Get the overall volume (between 0 and 1.0)
  vol1 = analyzer.analyze();

  float targetVol = vol1;
  float dVol = targetVol - vol2;
  vol2 += dVol * easing;

  float r= map(vol2, 0, 1, 100, 255);
  fill (r, 50, 100);
  float diameter=map(vol2, 0, .2, 10, 300);
  println(vol2);

  // Draw an ellipse with size based on volume
  ellipse(width/2, height/2, diameter, diameter);
}
