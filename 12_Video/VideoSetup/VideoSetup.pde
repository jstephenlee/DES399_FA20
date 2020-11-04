// From Learning Processing (with modifications)
//Example 16-1: Display video

// Step 1. Import the video library
import processing.video.*;

// Step 2. Declare a Capture object
Capture video;

void setup() {
  size(640, 360);
  println(Capture.list()); //show what cameras are available

  // Step 3. Initialize Capture object 
  video = new Capture(this, 640, 360, "FaceTime HD Camera (Built-in)"); //put the camera you want to use in quotes 
  video.start();

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
}
