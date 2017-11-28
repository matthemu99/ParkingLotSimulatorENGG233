// #Author: Matthew M.
// #Author: Phillip M.

class PriceCalculator{
  float price;
  int day;
  float hour;
  boolean beforeNoon;
  PriceCalculator(Date current){
    
    this.day = current.today;
    this.hour = current.hour;
    
    this.beforeNoon = current.before_noon;
    
    
  }
  
  void parkingFee(){
    if(day <=5 && beforeNoon == true){
     // this.price = hour * 
      
      
    }
    
    
    
  }
  
  
  
  
  
  
}