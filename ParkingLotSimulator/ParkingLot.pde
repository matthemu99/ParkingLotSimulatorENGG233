class ParkingLot{
 ParkingStallSection [] sectionList = new ParkingStallSection[5];

void drawLot(){
for (int i = 0, k = 0 ; i < 5 ; i++, k+= 300){
  for (int j = 0 ,w=0; j< 2; j++, w+= 400){
     // ParkingStallSection(float x, float y,int row, int col) {

  sectionList[i] = new ParkingStallSection(k,w,120,70);
  
  //ParkingStallSection section = new ParkingStallSection(50,300,200,222);
 // section.drawSection();
  
  sectionList [i].drawSection();
}
}





}
}