//tp3
//Lucila Tenutto
//comision 2

PImage arte; 


int tam;
int cant = 20;
boolean animacion = true;
boolean volverActualizar = true;

color colorCirculos;
color colorCuadrados;
color colorFondo;


void setup() {
 size(800, 400);
 arte = loadImage("opart2.jpg");
 tam = width / (2 * cant);
 noLoop();
}


void draw() {
  iniciarColores();
  if (volverActualizar){
    background(colorFondo);
    image(arte, 0, 0);
 

 dibujarPatron();
 volverActualizar = false;


}
}

void iniciarColores(){
  colorFondo = color(255);
  colorCirculos = color(0);
  colorCuadrados = color(0);
}

color verColor() {
  float r = map(mouseX, 0, width, 0, 255);
  float g = map(mouseY, 0, height, 0, 255);
  float b = map(mouseX + mouseY, 0, width + height, 0, 255);
  return color(r, g, b);
}
  

void reiniciarColorFondo() {
  colorFondo = color(255); 
  volverActualizar = true;
  redraw();
}

void reiniciarColoresFormas() {
  colorCirculos = color(0);
  colorCuadrados = color(0);
  volverActualizar = true;
  redraw();
}

void dibujarPatron() {
for (int i = 400; i < width; i += cant + 1) { 
  for (int j = 0; j < height; j += cant + 1) {
      if ((i / tam + j / tam) % 2 == 0) {
        if(animacion){
          fill(verColor());
        }else{
          fill(colorCirculos);
        }
        ellipse(i + tam / 2, j + tam / 2, tam, tam);
      } else {
        if (animacion){
          fill(verColor());
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
    cambiarFormaAleatorio();
  } 
  else {
    alternarAnimacion();
  }
}


void cambiarFormaAleatorio() {
  colorCirculos = color(random(255), random(255), random(255));
  colorCuadrados = color(random(255), random(255), random(255));
  volverActualizar = true;
  redraw();
}


void alternarAnimacion() {
  animacion = !animacion;
  if (animacion) {
    loop();
  } else {
    noLoop();
  }
  volverActualizar = true;
}

void keyPressed() {
   if (key == 'r' || key == 'R') {
    reiniciarColorFondo();
    reiniciarColoresFormas();
  } else if (key == 'f' || key == 'F') {
    colorFondo = color(random(255), random(255), random(255));
    volverActualizar = true;
  } else if (key == 'a' || key == 'A') {
    reiniciarColoresFormas();
  }
}
