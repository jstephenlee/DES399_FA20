

PImage img;       // The source image
int cellsize = 20; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system

void setup() {
  size(600, 800);
  img = loadImage("stella.png"); // Load the image
  cols = width/cellsize;              // Calculate # of columns
  rows = height/cellsize;             // Calculate # of rows
}

void draw() {
img.loadPixels();

  noStroke();
  // Begin loop for columns
  for (int i = 0; i < cols; i++ ) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++ ) {
      int x = i*cellsize; // x position
      int y = j*cellsize; // y position
      int loc = x + y*width;// Pixel array location
      color c = img.pixels[loc];// Grab the color
      fill (c); //fill with pixel color value
      triangle(x, y, x+cellsize, y, x+cellsize/2, y+cellsize); //draw a triangle pointing up
      //shift over and grab pixel array location and color
      x=i*cellsize+cellsize/2; 
      loc = x + y*width;  // Pixel array location
      c = img.pixels[loc]; //fill with pixel color value
      fill (c); //fill with pixel color value
      triangle(x, y+cellsize, x+cellsize, y+cellsize, x+cellsize/2, y); //draw a triangle pointing down
    }
  }
}
