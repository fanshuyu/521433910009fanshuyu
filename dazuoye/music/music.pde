import ddf.minim.*; 
Minim       minim; 
AudioPlayer music;
float voice; 
void setup() {
  size(800, 800);
  background(0);
  minim=new Minim(this);
  music=minim.loadFile("music.mp3", 1024);
  music.loop();
}

void draw() {
  voice=music.mix.level();
 background(0);
  noStroke();
  fill(random(0, 255), random(0, 255), random(0, 255));
  for (int i=200; i<=600; i+=400) {
    for (int y=200; y<=600; y+=400) {
      ellipse(i, y, voice*800, voice*800);
    }
  }
  rectMode(CENTER);
  rect(width/2, height/2, voice*300, voice*300);
}
