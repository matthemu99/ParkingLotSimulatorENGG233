// #Author: Matthew M.
// #Author: Phillip M.


ParkingLot park;
//Street northStreet;
//Street southStreet;
//PriceCalculator cost;
//etc... -_-


void setup() {
size(1100,700);

background(#059505);
strokeWeight(5);
stroke(255);
fill(#6A6C6C);
rect(100,125,900,450);
park = new ParkingLot();
park.drawLot();


//park.drawSection();
//ParkingStall(1.0,1.0,1.0,1.0)
}

void draw() {
}