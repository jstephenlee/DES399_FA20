// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 16-1: Display video

// Step 1. Import the video library
import processing.video.*;

// Step 2. Declare a Capture object
Capture video;
int cellsize = 10; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system
float theta=0;
float t=0;
void setup() {
  size(640, 360, P3D);
  println(Capture.list()); //show what cameras are available

  // Step 3. Initialize Capture object via Constructor
  // Use the default camera at 320x240 resolution
  video = new Capture(this, 640, 360, "FaceTime HD Camera (Built-in)"); //put the camera you want to use in quotes 
  video.start();
  cols = width/cellsize;              // Calculate # of columns
  rows = height/cellsize;
}

// An event for when a new frame is available
void captureEvent(Capture video) {
  // Step 4. Read the image from the camera.
  video.read();
}


void draw() {
  // Step 5. Display the video image.
  video.loadPixels();
  image (video, 0, 0);
  background (0);
  noStroke();

  // Begin loop for columns
  for (int i = 0; i < cols; i++ ) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++ ) {
      int x = i*cellsize + cellsize/2; // x position
      int y = j*cellsize + cellsize/2; // y position
      int loc = x + y*width;           // Pixel array location
      color c = video.pixels[loc];       // Grab the color
      // Map brightness to a z position with sine wave
      float z = map(brightness(video.pixels[loc]), 0, 255, -100, 100+sin(theta/10)*100);
      
      // Translate to the location, set fill and stroke, and draw the rect
      pushMatrix();
      translate(x, y+sin(theta*noise(t))*20, z); 
      c =color(red(video.pixels[loc])+noise(t)*10, green(video.pixels[loc]), blue(video.pixels[loc]));
      fill(c);
      //use rectangles
      //rectMode(CENTER);
      //rect(0, 0, cellsize/4*2+sin(theta+loc*2)*20, cellsize/4*2+sin(theta+loc*2)*20); 
      //use cirlces
      ellipse (0, 0, cellsize*2+sin(theta+loc*2)*cellsize, cellsize*2+sin(theta+loc*2)*cellsize);
      popMatrix();
    }
  }

  theta+=.01;
  t+=.01;
  //println(frameRate);
}
