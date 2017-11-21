class ParkingStallSection {
  ParkingStall [] stallList;
  float x, y;
  int row, col;

  ParkingStallSection(float x, float y,int row, int col) {
    stallList = new ParkingStall [row*col];
    this.row = row;
    this.col = col;
    this.x = x;
    this.y = y;
  }
  void drawSection() {
    for (int i =0; i < 10; i++) {
      stallList[i] = new ParkingStall(x,y , row, col);
      stallList[i].drawStall();
    }
  }
}