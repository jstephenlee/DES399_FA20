class SBar {

  float x;
  float y;
  float d1, d2;
  float bw;
  float vol;
  float easing;


  SBar (float tempX, float tempY, float tempBW, float tempEasing, float vol) {
    x=tempX;
    y=y;
    bw=tempBW;
    easing=tempEasing;
  }


  void run() {

    stroke(0);


    d1=vol*800;
    //easing code

    float targetD = d1;
    float dx = targetD - d2;
    d2 += dx * easing;

    noStroke();
    fill(map(d2, 0, 200, 0, 255), 20, map(d2, 0, 200, 255, 50));
    rect(x, height, bw, -100-d2);
  }
}
