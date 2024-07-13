//Tenutto Lucila
//tp3
//comision 2
//link al video:  https://www.youtube.com/watch?v=5R5s7uqTZ00


PImage arte; 


int tam;
int cant = 20;
boolean animacion = true;

color colorCirculos;
color colorCuadrados;
color colorFondo;


void setup() {
 size(800, 400);
 arte = loadImage("opart2.jpg");
 tam = width / (2 * cant);
 iniciarColores(); 
 noLoop();
}


void draw() {
  background(colorFondo);
  image(arte, 0, 0);
  dibujarPatron();
}
void iniciarColores(){
  colorFondo = color(255);
  colorCirculos = color(0);
  colorCuadrados = color(0);
}

color verColor(int x, int y) {
  float r = map(x, 0, width, 0, 255);
  float g = map(y, 0, height, 0, 255);
  float b = map(x + y, 0, width + height, 0, 255);
  return color(r, g, b);
}
  

void reiniciarColorFondo() {
  colorFondo = color(255); 
  redraw();
}

void reiniciarColoresFormas() {
  colorCirculos = color(0);
  colorCuadrados = color(0);
  redraw();
}
void dibujarPatron() {
for (int i = 400; i < width; i += cant + 1) { 
  for (int j = 0; j < height; j += cant + 1) {
      if ((i / tam + j / tam) % 2 == 0) {
        if(animacion){
         fill(verColor(mouseX, mouseY));
        }else{
          fill(colorCirculos);
        }
        ellipse(i + tam / 2, j + tam / 2, tam, tam);
      } else {
        if (animacion){
         fill(verColor(mouseX, mouseY));
        } else {
          fill(colorCuadrados);
        }
        rect(i, j, tam, tam); 
      }
}
}
}
void mousePressed() { 
  if (mouseX >= 400 && mouseX < 800 && mouseY >= 0 && mouseY < 400) {
    cambiarFormaAleatorio(255, 255, 255);
  } 
  else {
    alternarAnimacion();
  }
}


void cambiarFormaAleatorio(float maxR, float maxG, float maxB) {
  colorCirculos = color(random(maxR), random(maxG), random(maxB));
  colorCuadrados = color(random(maxR), random(maxG), random(maxB));
  redraw();
}


void cambiarFondoRandom() {
    colorFondo = color(random(255), random(255), random(255));
    redraw();
}

void alternarAnimacion() {
  animacion = !animacion;
  if (animacion) {
    loop();
  } else {
    noLoop();
  }
}

void keyPressed() {
   if (key == 'r' || key == 'R') {
    reiniciarColorFondo();
  } else if (key == 'f' || key == 'F') {
    cambiarFondoRandom();
  } else if (key == 'a' || key == 'A') {
    reiniciarColoresFormas();
  }
}
