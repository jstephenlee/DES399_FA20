
  class Wave {
    //variables
    float x;
    float y;
    float sizer;
    float theta;
    float tIncrement;
    int num;
    color c;

    //constructor
    Wave(float tempX, float tempY, float tempSizer, float tempTheta, float temptIncrement, int tempNum, color tempC) {
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

        rect (x+width/num*i, y+sizer*sin(theta+i), sizer, sizer*4+sin(theta+i)*sizer/4*3);
      }

      theta+=tIncrement;
    }
  }
