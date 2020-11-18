
//then display the text word by word by splitting it using a space
PFont f;
int index;
float theta;
String [] list;  //declare array here so it can be accessed in draw

void setup () {
  size (960, 540);
  f=createFont("Courier", 20);  
  String[] lines = loadStrings("speech.txt"); //load the text in a file
  list = split(lines[0], " "); //split the text using the space character
}


void draw () {
  background (0);
  fill (255);
  textFont(f, 100+sin(theta)*50);
  if (frameCount%30==0) {
  index++;
  }
  
  //create a condition to reset the index to avoid going out of bounds
  if (index>list.length-1){
   index=0; 
  }
  
  textAlign(CENTER);
  text (list[index], width/2, height/2);
 theta+=.1;
}
