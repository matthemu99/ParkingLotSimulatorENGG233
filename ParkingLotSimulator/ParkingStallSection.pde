class ParkingStallSection {
  ParkingStall [] stallList;
  float x, y;
  int row, col;

  ParkingStallSection(int r, int w, float x, float y) {
    stallList = new ParkingStall [r*w];
  }
  void drawSection() {
    for (int i =0; i < 10; i++) {
        stallList[i].drawStall();
      
    }
  }
}