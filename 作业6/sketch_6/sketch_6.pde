Ball[] balls=new Ball[40];
void setup() {
  size(600, 600);
  for (int i=0; i<balls.length; i++) {
    balls[i]=new Ball();
  }
}
void draw() {
  fill(0,50);
  noStroke();
  rect(0,0,width,height);
  for (int i=0; i<balls.length; i++) {
    balls[i].show();
    balls[i].move();
  }
}
class Ball {
  PVector location;
  PVector velecity;
  PVector acceleration;
  float topSpeed;
  float d;
  color c;
  Ball() {
    location=new PVector (random(width), random(height));
    velecity=new PVector (0, 0);
    topSpeed=12;
    d=random(5,20);
    c=color(random(255), random(255), random(255));
  }
  void show() {
    fill(255);
    stroke(c);
    strokeWeight(5);
    ellipse(location.x, location.y, d, d);
  }

  void move() {
    PVector mouse=new PVector(mouseX, mouseY);
    acceleration=PVector.sub(mouse, location);
    acceleration.setMag(0.7);
    location.add(velecity);
    velecity.add(acceleration);
    velecity.limit(topSpeed);
    if(location.x>width-d/2||location.x<d/2){
     acceleration.x*=-1;
    }
    if(location.y>height-d/2||location.y<d/2){
     acceleration.y*=-1;
    }
  }
}
