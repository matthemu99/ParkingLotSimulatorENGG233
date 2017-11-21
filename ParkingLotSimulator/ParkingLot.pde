// #Author: Matthew M.
// #Author: Phillip M.

class ParkingLot{
 ParkingStallSection [] sectionList = new ParkingStallSection[5];

void drawLot(){
for (int i = 0, k = 0 ; i < 5 ; i++, k+= 100){
  for (int j = 0 ,w=0; j< 2; j++, w+= 200){
     // ParkingStallSection(float x, float y,int row, int col) {

  sectionList[i] = new ParkingStallSection(5,2,120 +k,70 + w);
  
  //ParkingStallSection section = new ParkingStallSection(50,300,200,222);
 // section.drawSection();
  
  sectionList [i].drawSection();
}
}





}
}