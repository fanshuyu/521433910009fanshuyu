String txt="Hello word";
size(600, 600);
background(random(50,150));
float ww=100;
for (int i=0; i<txt.length(); i++) {
  char c=txt.charAt(i);
  textSize(floor(random(50, 100)));
  fill(random(255)*i, c*i, ww*i);
  text(c, ww, 300);
  ww+=textWidth(c);
}
