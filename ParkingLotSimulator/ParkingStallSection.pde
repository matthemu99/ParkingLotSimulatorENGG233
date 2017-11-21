// #Author: Matthew M.
// #Author: Phillip M.

class ParkingStallSection {
  ParkingStall [][] stallList;
  float x, y;
  int row, col;

  ParkingStallSection(int row, int col, float x, float y) {
    stallList = new ParkingStall [row][col];
    this.row = row;
    this.col = col;
    this.x = x;
    this.y = y;



    for (int i = 0; i < row; i++) {
      for (int j = 0; j < col; j++) {
        float xCoor = x+100*i;
        float yCoor = y+50*j;
        stallList[i][j] = new ParkingStall(xCoor, yCoor, 100, 50); // width and height, 100, 50 respectively
      }
    }
  }
  void drawSection() {
    for (int i =0; i < 5; i++) {
      for (int j = 0; j < 2; j++) { //stallList[i] = new ParkingStall(x,y , row, col);
        stallList[i][j].drawStall();
      }
    }
  }
}