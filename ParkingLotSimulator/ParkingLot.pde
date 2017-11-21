class ParkingLot{
 ParkingStallSection [] sectionList;


void drawLot(){
for (int i = 0; i < 6 ; i++){
  sectionList[i] = new ParkingStallSection(2,5,3,4 + i);
  
  
  
  sectionList [i].drawSection();
}
}





}