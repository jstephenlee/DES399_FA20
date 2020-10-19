float theta;


//declare and create arrays
Wave [] waves = new Wave [10];
HWave [] hwaves = new HWave [10];

void setup() {
  size(960, 540);
  //initialize waves array
  for (int i=0; i<waves.length; i++) {
    //color c = color(random(255), random(255), random(255));
    color c = color (map(i, 0, waves.length, 0, 255), map(i, 0, waves.length, 150, 20), 200);
    int num=30;
    float sizer=width/num;
    waves[i]= new Wave (0, sizer+i*40, sizer*2, PI/8*i, .05, num, c);
  }
  //initialize hwaves array
  for (int i=0; i<hwaves.length; i++) {
    //  color c = color(random(255), random(255), random(255));
    color c = color (map(i, 0, hwaves.length, 0, 255), map(i, 0, hwaves.length, 150, 20), 200);
    int num=50;
    float sizer=height/num;
    hwaves[i]= new HWave (width/2, sizer*i, sizer*2, PI/8*i, .01, num, c);
  }
}


void draw () {
  background(10);
  noStroke();

//create conditions to change values of objects
  if (frameCount%200==0) {
    int n=int(random(10, 60)); 
    for (int i=0; i<hwaves.length; i++) {
      hwaves[i].num=n;
      hwaves[i].sizer=width/n;
    }
  }

  if (frameCount%210==0) {
    int n=int(random(10, 80)); 
    for (int i=0; i<waves.length; i++) {
      waves[i].num=n;
      waves[i].sizer=height/n;
    }
  }

//use a timer to switch between visuals
  if (frameCount%100<50) {

    for (int i=0; i<hwaves.length; i++) {
      hwaves[i].run();
    }
  } else {

    for (int i=0; i<waves.length; i++) {
      waves[i].run();
    }
  }
}
