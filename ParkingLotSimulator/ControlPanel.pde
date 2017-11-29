// #Author: Matthew M.
// #Author: Phillip M.

class ControlPanel{
  String display;
 
  
  
  ControlPanel(String day){
    this.display = day;
  }
  
  
  
void drawPanel(){
  fill(0);
  strokeWeight(3);
  fill(190);
  rect(20,6,200,65);
  //rect(); with start and stop
  //rect(); with simulation values
  fill(0);
  textAlign(LEFT);
  text("Parking Rates:", 25,25);
  text("$3.00 / Hour  Mon - Sat", 25,45);
  text("$1.50 / Hour  Sun", 25,65);
  text(display, 900, 30);
  
}
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}