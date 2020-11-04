// Example 15-15: 2D image mapped to 3D
//position changed using sine and noise

import processing.pdf.*;

boolean record;

import java.util.Calendar;



PImage img;       // The source image
int cellsize = 10; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system
float theta=0;
float t=0;
void setup() {
  size(600, 800, P3D);
  img = loadImage("stella.png"); // Load the image
  cols = width/cellsize;              // Calculate # of columns
  rows = height/cellsize;             // Calculate # of rows
}

void draw() {

  if (record) {
    beginRaw(PDF, timestamp()+".pdf");
  }
  background(0);
  img.loadPixels();
  //lights(); //lights for 3D shading 
  // Begin loop for columns
  for (int i = 0; i < cols; i++ ) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++ ) {
      int x = i*cellsize + cellsize/2; // x position
      int y = j*cellsize + cellsize/2; // y position
      int loc = x + y*width;           // Pixel array location
      color c = img.pixels[loc];       // Grab the color
      // Map brightness to a z position as a function of mouseX
      float z = map(brightness(img.pixels[loc]), 0, 255, -200, 500+sin(theta/10)*500);
      // Translate to the location, set fill and stroke, and draw the rect
      pushMatrix();
      translate(x, y+sin(theta*noise(t))*20, z); 
      c =color(red(img.pixels[loc])+noise(t)*10, green(img.pixels[loc]), blue(img.pixels[loc]));
      fill(c);
      noStroke();

      rectMode(CENTER);
      rotate(i*PI/4*noise(t));

      //different options for form

      ellipse(0, 0, cellsize*2, cellsize*2);

      //rect(0, 0, cellsize, cellsize);

      //sphereDetail(3);
      //sphere(cellsize);
      popMatrix();
    }
  }

  //increment theta and t
  theta+=.1;
  t+=.0001;
  //filter(POSTERIZE, map(cos(theta), -1, 1, 2, 10));
  println(frameCount);
  if (record) {
    endRaw();
    record = false;
  }
}


// Hit 'r' to record a single frame
void keyPressed() {
  if (key == 'r') {
    record = true;
  }
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
