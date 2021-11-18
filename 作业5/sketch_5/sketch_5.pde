color c=color(0,0,0);
float sW=2;
void setup() {
  size(600, 600);
  background(255);
  rectMode(CENTER);
}

void draw() {
    if(mousePressed&&mouseY<520){
    stroke(c);
    strokeWeight(sW);
   line(mouseX,mouseY,pmouseX,pmouseY);
  }
  noStroke();
  fill(255,0,0);
  rect(83,560,50,25);
  fill(0);
  rect(300,560,50,25);
  fill(0,255,0);
  rect(511,560,50,25);
  fill(c);
  rect(158,560,15,15);
  rect(224,560,20,20);
  rect(375,560,25,25);
  rect(432,560,30,30);
  
  stroke(0);
  strokeWeight(5);
}

void mousePressed(){
 if(abs(mouseX-83)<25&&abs(mouseY-560)<15){
  c=color(255,0,0);
 }
 if(abs(mouseX-300)<25&&abs(mouseY-560)<15){
  c=color(0,0,0);
 }
 if(abs(mouseX-511)<25&&abs(mouseY-560)<15){
  c=color(0,255,0);
 }
 if(abs(mouseX-158)<10&&abs(mouseY-560)<10){
  sW=2;
 }
 if(abs(mouseX-224)<10&&abs(mouseY-560)<10){
  sW=5;
 }
 if(abs(mouseX-375)<10&&abs(mouseY-560)<10){
  sW=10;
 }
 if(abs(mouseX-432)<10&&abs(mouseY-560)<10){
  sW=15;
 }
}
