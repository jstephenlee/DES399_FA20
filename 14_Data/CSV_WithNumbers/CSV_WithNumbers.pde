Table table; //declare table

PFont f;

float cellsize;
void setup() {
  size(480, 270);
  table = loadTable("diet.csv", "header"); //initialize table
  cellsize =width/table.getColumnCount(); //create cellsize according to width and number of items in table
  f=createFont ("Arial", 50);
}


void draw() {
  textFont(f);
  textAlign(CENTER);

  // You can iterate over all the columns in a table
  for (int i = 0; i < table.getColumnCount(); i++) {
    fill (map (table.getFloat(0, i), 0, 10, 0, 255));
    rect(i*cellsize, height, cellsize, map (table.getFloat(0, i), 0, 20, 0, -height));
    fill (0);
    text (table.getInt(0, i), i*cellsize+cellsize/2, height-map (table.getFloat(0, i), 0, 20, 50, height));
  }
}
