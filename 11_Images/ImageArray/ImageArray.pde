//declare and create image array
PImage [] images = new PImage [4];
int counter=0;

void setup () {
  size (640, 400);
  //initialize the image array
  for (int i=0; i<images.length; i++) {
    images[i]= loadImage("marek-piwnicki-"+i+".jpg");
  }
}

void draw () {
  image (images[counter], 0, 0);

  //every 30 frames advance the counter
  if (frameCount%30==0) {
    counter++;
  }
  //reset the counter if it goes too high
  if (counter>3) {
    counter=0;
  }
}
