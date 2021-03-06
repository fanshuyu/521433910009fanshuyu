void setup() {
  size(800, 800);
  background(#eeeeee);
}

void draw() {
  background(#eeeeee);

  translate(width/2, height/2);
  for (int a = 0; a<360; a+=2) {
    pushMatrix();
    stroke(50);
    rotate(radians(a));
    line(100, 0, mouseX, mouseX);
    popMatrix();
  }
  noStroke();
  fill(255, 0, 0);
  ellipse(0, 0, 50, 50);
}

void keyPressed() {
  redraw();
}
