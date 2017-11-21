// #Author: Matthew M.
// #Author: Phillip M.

class ParkingLot {
  ParkingStallSection [][] sectionList = new ParkingStallSection [2][5];


  ParkingLot() {
    for (int i = 0; i < 2; i++) {
      for (int j = 0; j< 3; j++) {
        //ParkingStallSection(int row, int col, float x, float y) {
        sectionList[i][j] = new ParkingStallSection(2, 5, 175 + (i *400), 150 + (j*150));


      }
    }
  }



  void drawLot() {
    for (int i = 0, k = 0; i < 2; i++, k+= 400) {
      for (int j = 0, w=0; j< 3; j++, w+= 200) {
        //ParkingStallSection(int row, int col, float x, float y) {
        //sectionList[i][j] = new ParkingStallSection(2, 5, k, w);
        //ParkingStallSection section = new ParkingStallSection(50,300,200,222);
        // section.drawSection();

        sectionList [i][j].drawSection();
      }
    }
  }
}