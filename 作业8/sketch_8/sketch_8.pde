float ang;

void setup() {
  size(960, 1080);

  smooth(4);
  rectMode(CENTER);
  stroke(0,15,30);
  strokeWeight(1);
}

void draw() {
  background(0,15,30);

  translate(width/2, height/2);
  for (int i =0; i<100; i++) {
    fill(i*10,15,30);
    scale(0.95);
    rotate(radians(ang));
    rect(0, 0, 800, 800);
  }
  ang+=0.1;
}
