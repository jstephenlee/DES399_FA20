//Image Topics

//load an image and display it
//use tint to apply a tint to the image
//use filter to affect the image
//load pixels array

PImage img;
int loc;
int cellsize =20;

void setup() {
  size(600, 800);
  img = loadImage("stella.png");
  colorMode(RGB);
  background(255);
  noStroke();
}

void draw () {
  //tint(100);
  image(img, 0, 0);
  //filter(POSTERIZE, 2);

  //load pixels array
  for (int x=0; x<img.width; x+=cellsize) {
    for (int y=0; y<img.height; y+=cellsize) {

      int loc = x+y*width; //two-dimensional image into a one-dimesional pixel array


      //different values to pull from pixels
      //brightness
      float bright = brightness(img.pixels[loc]);
      //color
      color c =img.pixels[loc];
      //individual color components
      float r =red(img.pixels[loc]);
      float g =green(img.pixels[loc]);
      float b =blue(img.pixels[loc]);

      fill(c);
      //rect (x, y, cellsize, cellsize);
    }
  }
}
