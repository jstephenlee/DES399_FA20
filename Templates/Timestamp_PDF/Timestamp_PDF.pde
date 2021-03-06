//template for recording PDFS with a timestamp
import processing.pdf.*; //import PDF library
import java.util.Calendar; //import java library

boolean record;


void setup() {
  size(800, 600);
}

void draw() {

  if (record) {
    beginRecord(PDF, timestamp()+".pdf");
  }
  //put code here
  background (0);


  if (record) {
    endRecord();
    record = false;
  }
}



void keyPressed() {
  // Hit 'r' to record a single frame
  if (key == 'r') {
    record = true;
  }
  //Hit 's' to save a frame as a jpg  
  if (key == 's') {
    saveFrame (timestamp()+".jpg");
  }
}

//return the timestamp as a string
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
