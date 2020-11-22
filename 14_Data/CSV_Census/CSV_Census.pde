//2010 Census Populations by Zipcode


Table table; //declare table

float cellsize;

PFont f;

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

  // You can access iterate over all the rows in a table
  for (int i = 0; i < table.getRowCount(); i++) {

    fill(255);


    //use median age to color the bars
    stroke(map(table.getFloat(i, 2), 19.3, 75, 0, 255), map(table.getFloat(i, 2), 19.3, 75, 255, 0), 0); // map color to median age


    line (i*cellsize, height, i*cellsize, height-map(table.getInt(i, 1), 0, 105549, 0, height/4*3));
  }
}
