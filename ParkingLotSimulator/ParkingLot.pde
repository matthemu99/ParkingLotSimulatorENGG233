// #Author: Matthew M.
// #Author: Phillip M.

class ParkingLot {
  ParkingStallSection [][] sectionList;

  ParkingLot() {
    for (int i = 0; i <2; i++) {
      for (int j = 0; j<3; j++) {
        
        //  ParkingStallSection(int row, int col, float x, float y) {
 sectionList = new ParkingStallSection[2][3];
       sectionList[i][j] = new ParkingStallSection(2, 3, 500*i ,500*j);
      }
    }
  }


  void drawLot() {
    for (int i = 0, k = 0; i < 2; i++, k+= 400) {
      for (int j = 0, w=0; j< 3; j++, w+= 200) {
        // ParkingStallSection(float x, float y,int row, int col) {
        sectionList[i][j] = new ParkingStallSection(5, 2, 120 +k, w);
        //ParkingStallSection section = new ParkingStallSection(50,300,200,222);
        // section.drawSection();

        sectionList [i][j].drawSection();
      }
    }
  }
}