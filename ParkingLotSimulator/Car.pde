// #Author: Matthew M.
// #Author: Phillip M.

class Car{


float r = random(0, 250);
float g = random(0, 250);
float b = random(0, 250);
int x = 0;
void carDrive(int x){
//for(int x=0;x<1200;x++){
  
 fill(r,g,b);
 stroke(0);
 strokeWeight(1);
rect(x,103,35,25);
fill(#83D7F0);
rect(x+5,108,7,15);
rect(x+20,108,7,15);
fill(0);
line(x+5,102,x+12,102);
line(x+5,129,x+12,129);
line(x+20,102,x+27,102);
line(x+20,129,x+27,129);
fill(#FCFC1F);
ellipse(x+33,110,3,3);
ellipse(x+33,122,3,3);
//}
}

}