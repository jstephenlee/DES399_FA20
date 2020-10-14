Planet [] planetArray = new Planet [80];

void setup() {
  size(800, 800);
  for (int i=0; i<planetArray.length; i++) {
    planetArray[i]=new Planet (color(random(255), random(255), random(255)),width/2, height/2, i*2, i*4, i*PI/64, random(PI/64));
    
  }
  
  
}


void draw () {
  background (0);
    for (int i=0; i<planetArray.length; i++) {
     planetArray[i].run(); 
    }
  
  
}
