//2010 Census Populations by Zipcode

//automatically move through the data


Table table; //declare table

float cellsize;
float easing = 0.5;

float y;

PFont f;

float marker=0;
void setup() {
  size(960, 540);
  smooth();
  pixelDensity(2);
  f = createFont("Arial", 16);
  table = loadTable("2010_Census_Populations_by_Zip_Code.csv", "header"); //initialize table
  cellsize =width/table.getRowCount(); //create cellsize according to width and number of items in table
}


void draw() {
  background(20);

  // You can access iterate over all the columns in a table
  for (int i = 0; i < table.getRowCount(); i++) {

    fill(255);
    float newY =height-map(table.getInt(i, 1), 0, 105549, 0, height/4*3)-10;


    stroke(map(table.getFloat(i, 2), 19.3, 75, 0, 255), map(table.getFloat(i, 2), 19.3, 75, 255, 0), 0); // map color to median age
    if (marker>i*cellsize-cellsize/2&&marker<i*cellsize+cellsize/2) {
      fill(255);


      float targetY = newY;
      float dy = targetY - y;
      y += dy * easing;


      text(table.getInt(i, 1), i*cellsize, y);

      stroke(255);
    }

    line (i*cellsize, height, i*cellsize, height-map(table.getInt(i, 1), 0, 105549, 0, height/4*3));

    fill(10);

    //text (table.getString(i, 3), table.getInt(i, 0)+table.getFloat(i, 2)/2+10, table.getInt(i, 1));
  }


  marker+=.25;
  if (marker>width) {
    marker=0;
  }
}
