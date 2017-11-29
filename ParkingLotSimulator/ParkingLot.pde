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
    strokeWeight(5);
  stroke(255);  
    fill(#6A6C6C);
  
    rect(150, 172.5, 800, 425);
    for (int i = 0; i < 2; i++ ) {
      for (int j = 0; j< 3; j++) {
        sectionList [i][j].drawSection();
      }
    }
  }
}