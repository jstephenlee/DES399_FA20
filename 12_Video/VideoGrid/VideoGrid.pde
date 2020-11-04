// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 16-7: Video pixelation

import processing.video.*;

// Size of each cell in the grid, ratio of window size to video size
int videoScale = 12;
// Number of columns and rows in our system
int cols, rows;
// Variable to hold onto Capture object
Capture video;

void setup() {
  size (960, 540);
  pixelDensity(2); //use pixel density to get a higher quality image (will be 1920x1080)

  // Initialize columns and rows
  cols = width / videoScale;
  rows = height / videoScale;
  video = new Capture(this, 80, 45, "FaceTime HD Camera (Built-in)"); //remember to put the camera in quotes
  video.start();
}

void captureEvent(Capture video) {
  // Read image from the camera
  video.read();
}

void draw() {

  video.loadPixels();

  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {

      // Where are we, pixel-wise?
      int x = i * videoScale;
      int y = j * videoScale;
      // Looking up the appropriate color in the pixel array
      color c = video.pixels[i + j * video.width];
      fill(c);
      stroke(0);
      rect(x, y, videoScale, videoScale);
    }
  }
}
