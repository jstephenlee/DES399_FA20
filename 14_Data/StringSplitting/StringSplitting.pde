//sketch to display a long string word by word

String s ="You will face many defeats in life, but never let yourself be defeated.";

String [] list = split (s, ' ');
PFont f;

int index=0;

void setup() {
  size(960, 540);
  f = createFont("GlyphWorld-Mountain.ttf", 16);
}


void draw() {
  background(0, 0, 255);
  
  textFont(f, 100);
  
  textAlign(CENTER);
  text(list[index], width/2, height/2);
  
  if (frameCount%20==0) {
   index++; 
    
  }
  
  if (index>=list.length) {
   index=0; 
  }
 
}
  
  
