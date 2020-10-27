
  class HWave {
    //variables
    float x;
    float y;
    float sizer;
    float theta;
    float tIncrement;
    int num;
    color c;

    //constructor
    HWave(float tempX, float tempY, float tempSizer, float tempTheta, float temptIncrement, int tempNum, color tempC) {
      x=tempX;
      y=tempY;
      sizer=tempSizer;
      theta=tempTheta;
      tIncrement=temptIncrement;
      num=tempNum;
      c=tempC;
    }

    //functions

    void run () {
      
      for (int i =0; i<=num; i++) {

        fill (c);
        println(c);

        rect (x+width/2*sin(theta+i), y+width/num*i, sizer*10+sin(theta+i)*sizer/4*3, sizer/10) ;
      }

      theta+=tIncrement;
    }
  }
