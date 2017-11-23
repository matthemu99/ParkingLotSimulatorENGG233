// #Author: Matthew M.
// #Author: Phillip M.

class ParkingLot {
  ParkingStallSection [][] sectionList = new ParkingStallSection [2][5];


  ParkingLot() {
    for (int i = 0; i < 2; i++) {
      for (int j = 0; j< 3; j++) {
        sectionList[i][j] = new ParkingStallSection(2, 5, 175 + (i *400), 200 + (j*140)); //(int row, int col, float x, float y)
      }
    }
  }



  void drawLot() {
    for (int i = 0; i < 2; i++ ) {
      for (int j = 0; j< 3; j++) {
        sectionList [i][j].drawSection();
      }
    }
  }
}