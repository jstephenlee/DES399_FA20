Table table; //declare table

float cellsize;
void setup() {
  size(480, 270);
  table = loadTable("diet.csv", "header"); //initialize table
  cellsize =width/table.getColumnCount(); //create cellsize according to width and number of items in table
}


void draw() {
 
  // You can iterate over all the columns in a table
  for (int i = 0; i < table.getColumnCount(); i++) {
    rect(i*cellsize, height, cellsize, map (table.getFloat(0, i), 0, 20, 0, -height));
  }
}
