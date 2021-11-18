int counter;

void setup() {
size(800,800);
background(255); 
counter = 0;
}

void draw() {
noStroke();
fill(random(255),100,255,50);

if(mousePressed == true) {
ellipse(mouseX, mouseY, 20, 20);
}
else {
fill(random(255),100,255,50);
ellipse(height/2,width/2, 100,100);
}
}
