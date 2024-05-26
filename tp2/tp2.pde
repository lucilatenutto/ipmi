//tp2
//Tenutto Lucila
//comision 2


PImage juego1;
PImage juego2;
PImage juego3;
PImage juego4;

PFont fuente1;
PFont fuente2;
PFont fuente3;
PFont fuente4;

int tiempoFrame = 4500;
int tiempoCambio;
int imagenActual = 0;

float tamaño;
int x, y;
float posX = 500;
float textSize = 30;
float textSizeChange = 0.5;
int textoColor = 0;

color relleno;
boolean animacionActiva = true;


void setup() {
  size(640, 480);
  
  juego1 = loadImage ("juego1.jpg");
  juego2 = loadImage ("juego2.jpeg");
  juego3 = loadImage ("juego3.jpg");
  juego4 = loadImage ("juego4.jpeg");
  
  fuente1 = loadFont("Garamond-Bold-48.vlw");
  fuente2 = loadFont("GillSansMT-Condensed-45.vlw");
  fuente3 = loadFont("ComicSansMS-Bold-30.vlw");
  fuente4 = loadFont("CopperplateGothic-Bold-30.vlw");
  
 
  tamaño = 20;
  x = width / 2;
  y = height / 2;
 
  relleno = color( random(255),random(255),random(255) );
 
  textAlign(CENTER, CENTER);
  tiempoCambio = millis();

}

void draw(){
  background(255);
  
   fill(relleno);
   textSize(tamaño);
   tamaño += 1;
   println(tamaño);
  
if (animacionActiva) {  
 if (millis() - tiempoCambio > tiempoFrame){
   imagenActual = (imagenActual + 1) % 4;
   tiempoCambio = millis();
 }
 }
  if (imagenActual == 3) {
        animacionActiva = false;
      }else if (imagenActual == 0) {
        animacionActiva = true;
      }


 
 if (imagenActual == 0) {
   image(juego1, 0, 0, width, height);
   textFont(fuente1);
   text("The Witcher 3: Wild Hunt", width / 2, height / 2);
 }if (tamaño <= 170) {
      relleno = color( random(255),random(255),random(255) );
 }else if (imagenActual == 1){
   image(juego2, 0, 0, width, height);
   fill(255);
   textFont(fuente2);
   text("Explora el mundo y acepta misiones: \nRecorre un mundo abierto y habla con personajes \npara obtener misiones", posX, height / 2);
   posX += 2;
 }if (posX > width) {
      posX = 100;
 }else if (imagenActual == 2){
   image(juego3, 0, 0, width, height);
   fill(255);
   textFont(fuente3);
   textSize(textSize);
   text("Combate contra monstruos y enemigos: \nUsa espadas, magia y pociones para luchar \ncontra diversos enemigos", width / 2, height / 2);
   textSize += textSizeChange;
 }if (textSize > 60 && textSize < 30) {
      textSizeChange *= -1; 
 }else if (imagenActual == 3){
   image(juego4, 0, 0, width, height);
   fill(255);
   textFont(fuente4);
   textSize(30);
   fill(textoColor, 0, 255 - textoColor);
   text("Toma decisiones que afectan \nla historia: \nElige opciones que influirán en \nel desarrollo y final de la historia", width / 2, height / 2);
    textoColor += 1;
    if (textoColor > 255) {
      textoColor = 0;
    }
   fill(0);
   rect(width / 2 - 100, height - 100, 200, 50);
   fill(255);
   text("Reiniciar", width / 2, height - 75);
  }
 }
  
void mousePressed() {
  if (imagenActual == 3 && mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height - 100 && mouseY < height - 50) {
    animacionActiva = true;
    imagenActual = 0;
    tiempoCambio = millis();
  }
}
