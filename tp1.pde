int textorinicio;
int pantallita;
int Y=610;
int Y2=610;
int Y3=610;
int Y4=610;
int movimiento=1;
PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PFont fuente;

void setup(){
  size(800,600);
  String[] fontList = PFont.list();
  printArray(fontList);
  img=loadImage("1.jpg");
  img2=loadImage("2.jpg");
  img3=loadImage("3.jpg");
  img4=loadImage("4.jpg");
  img5=loadImage("5.jpg");
  img6=loadImage("6.jpg");
  fuente = createFont("Rockwell Negrita", 30);
  

}


void draw(){

textFont(fuente);
fill(random(0,255),random(0,255),random(0,255));
  
  if(pantallita==0){
    image(img,0,0,800,600);
    fill(255, 255, 255);
    rect(200, 400, 400, 100);
    strokeWeight(10);
    stroke(255, random(150, 180), random(20, 30));
    textAlign(CENTER, CENTER);
    textFont(fuente);        
    fill(0, 0, 0);
    text("INICIAR", 400, 450);
  }
  
  else if(pantallita==1){
    image(img2,0,0,800,600);
    textFont(fuente);
    text("DEMON SLAYER",400,Y);
    if(Y<619 & Y>200){
    Y=Y-movimiento;  
} 
   
  }
  
  else if(pantallita==2){
    image(img3,0,0,800,600);
    textFont(fuente);
    text("SERIE ANIME JAPONESA",400,Y2);
    if(Y2<619 & Y2>200){
    Y2=Y2-movimiento;  
} 
   
  }
  else if(pantallita==3){
    image(img4,0,0,800,600);
    textFont(fuente);
    text("BUSCA LA CURA PARA SANAR A SU HERMANA",400,Y3+20);
    if(Y3<619 & Y3>200){
    Y3=Y3-movimiento;  
} 
   
  }
  else if(pantallita==4){
    image(img5,0,0,800,600);
    textFont(fuente);
    text("PARA ELLO DEBERA ENFRENTAR DEMONIOS",400,Y4);
    if(Y4<619 & Y4>200){
    Y4=Y4-movimiento;  
} 
   
  }
  else if(pantallita==5){
    image(img6,0,0,800,600);
    textFont(fuente);
    text("FIN SIN SPOILERS",400,300);
   
   
  }
  
  
  
  
  
  
  
  
if(pantallita==1 & Y==300){
pantallita=2;}
if(pantallita==2 & Y2==300){
pantallita=3;}
if(pantallita==3 & Y3==300){
pantallita=4;}
if(pantallita==4 & Y4==300){
pantallita=5;}

  
  
  
  
} 
  
  
  
  
  
  
  
  
  
  
  //------------------------------------------------------------------------//
void mouseClicked(){
if (pantallita==0  &&  mouseX>200 && mouseX< 600 && mouseY>400 && mouseY<600) {
    pantallita=1;
  }
}
