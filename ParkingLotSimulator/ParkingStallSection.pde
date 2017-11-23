// #Author: Matthew M.
// #Author: Phillip M.

class ParkingStallSection {
  ParkingStall [][] stallList ;
  float x, y;
  int row, col;

  ParkingStallSection(int row, int col, float x, float y) {
    stallList = new ParkingStall [col][row];
    this.row = row;
    this.col = col;
    this.x = x;
    this.y = y;


    for (int i = 0; i < col; i++) {
      for (int j = 0; j < row; j++) {
        float width = 70; //70
        float height = 45; //50
        float xCoor = x+(width*i);
        float yCoor = y+(height*j);
        stallList[i][j] = new ParkingStall(xCoor, yCoor, width, height); // width and height, 70, 50 respectively
      }
    }
  }
  void drawSection() {
    for (int i =0; i < col; i++) {
      for (int j = 0; j < row; j++) { 
        stallList[i][j].drawStall();
      }
    }
  }
}