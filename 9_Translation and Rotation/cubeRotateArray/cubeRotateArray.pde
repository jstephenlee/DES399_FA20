cubeRotate [] cubeArray = new cubeRotate [100];


void setup() {
 size (800, 800, P3D);
 colorMode(HSB, 360, 100, 100);

 
 for (int i =0; i<cubeArray.length; i++) {
  cubeArray[i]= new cubeRotate(width/2, height/2, 0, map (i, 0, cubeArray.length, 10, 50), map (i, 0, cubeArray.length,50, 350), PI/4*i, map (i, 0, cubeArray.length, .005, .02), random(1)); 
   
 }
  
}

void draw () {
  background (360, 0, 0);
  for (int i =0; i<cubeArray.length; i++) {
    cubeArray[i].run();
  }
  
}
