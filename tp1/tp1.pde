//Tenutto Lucila
//tp1
//comisión 2

PImage paisaje ;

void setup(){
size (800, 400);
background(245, 130, 7);
paisaje = loadImage("gatito.jpg");
image(paisaje, 0, 0);
}
void draw() {
noStroke();
fill(87, 100, 92);
rect(399, 282, 400 , 120);
fill(67, 47, 5);
rect(400, 157, 400, 125);
fill(57, 53, 5);
noStroke();
rect(398, 200, 400, 80);
fill(0);
rect(486, 264, 85, 145);
rect(400, 325, 400, 20);
stroke(0);
line(673, 340, 670, 400);
line(696, 340, 693, 400);
rect(472, 250, 112, 19);
rect(489, 220, 80, 32);
rect(504, 204, 51, 32);
rect(515, 180, 30, 25);
fill(255, 255, 180);
noStroke();
ellipse(595, 78, 200, 150);

//gato
fill(0);
ellipse(660, 160, 60, 60);
triangle(630, 123, 640, 138, 658, 133);
triangle(650, 124, 646, 131, 660, 130);
triangle(683, 146, 665, 180, 750, 200);
fill(57, 53, 5);
fill(0);
ellipse(725, 220, 130, 100);
rect(668, 179, 30, 30);
ellipse(743, 249, 110, 160);
ellipse(715, 318, 30, 30);
rect(675, 245, 20, 80, 40);
ellipse(679, 320, 30, 20);
rect(784, 260, 30, 110, 50);

}
