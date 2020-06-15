PFont font1 ;
int Y =-1;
int X=800/2;
int pantalla;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PImage imagen6;
void setup() {
  size(800, 600);
  imagen1=loadImage("1.jpg");
  imagen2=loadImage("2.jpg");
  imagen3=loadImage("3.jpg");
  imagen4=loadImage("4.jpg");
  imagen5=loadImage("5.jpg");
  imagen6=loadImage("6.png");
  font1 = loadFont("Cambria-Bold-80.vlw");
} 

void draw() {
  if (pantalla==0) {
    image(imagen1, 0, 0, 800, 600);
    textAlign(CENTER);
    textFont(font1);
    textSize(90);
    fill(#B21010);
    text("GOD OF WAR", X, Y);
    Y=Y+3;
    if (Y>680) {
      Y= pantalla=1;
    }
  } else if (pantalla==1) {
    image(imagen2, random(0, 2), random(0, 2), 800, 600);
    textAlign(CENTER);
    textSize(60);
    fill(#5F0000);

    text("KRATOS", X, Y);
    text("DIOS DE LA GUERRA", X, Y+60);
    Y=Y+4;
    if (Y>660) {
      Y= pantalla=2;
    }
  } else if (pantalla==2) {
    image(imagen3, 0, 0, 800, 600);
    textAlign(CENTER);
    textSize(60);
    fill(#5F0000);
    text("ATREUS", X, Y);
    text("HIJO DE KRATOS", X, Y+80);
    Y=Y+4;
    if (Y>660) {
      Y= pantalla=3;
    }
  } else if (pantalla==3) {
    image(imagen4, 0, 0, 800, 600);
    textAlign(CENTER);
    textSize(60);
    fill(#5F0000);
    text("Personajes secundarios", X, Y);
    Y=Y+3;
    if (Y>660) {
      Y= pantalla=4;
    }
  } else if (pantalla==4) {
    image(imagen5, 0, 0, 800, 600);
    textAlign(CENTER);
    textSize(60);
    fill(#5F0000);
    text("BALDUR", X, Y);
    text("HIJO DE ODIN", X, Y+80);
    Y=Y+4;
    if (Y>660) {
      Y= pantalla=5;
    }
  } else if (pantalla==5) {
    image(imagen6, 0, 0, 800, 600);
    textAlign(CENTER);
    textSize(60);
    fill(#5F0000);
    text("FREYA", X, Y);
    text("DRUIDA", X, Y+80);
    Y=Y+4;
    if (Y>660) {
      Y= pantalla=0;
    }
  }
}
