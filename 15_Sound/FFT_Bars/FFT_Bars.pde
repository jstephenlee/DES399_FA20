/*
fft bars with live mic input
 */


import processing.sound.*;


//STEPS FOR ADDING MIC INPUT
//1) add input as global variable
//2) initialize input and start in setup
//3) change fft.input


AudioIn input;
FFT fft;
int bands = 512/4;




void setup() {
  size(512, 360);



  // Start listening to the microphone
  // Create an Audio input and grab the 1st channel
  input = new AudioIn(this, 0);

  // start the Audio Input
  input.start();

  // Create and patch the FFT analyzer
  fft = new FFT(this, bands);
  //fft.input(song); //swap input from song to input

  fft.input(input);
}

void draw() {
  background(255);

  fft.analyze();

  for (int i = 0; i < bands; i++) {
    stroke(0);
    // The FFT range is between 0 and 1, we map it to pixels
    float y = map(fft.spectrum[i], 0, 1, 0, height)*2;
    //println(fft.spectrum[i]);
    rect(i*width/bands, height-y-100, width/bands, y);
    println(y);
  }
}
