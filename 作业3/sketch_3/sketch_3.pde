int x=0;
int speed=1;


void setup(){
size(700,700);
}
void draw(){
background(255);

fill(255);
rect(-8,-30,710,676); 

fill(255);
rect(0,30,704,670);

fill(104,103,102);
noStroke();
rect(30,30,200,110);

fill(155,155,150);
noStroke();
rect(239,30,100,109);

fill(3);
rect(450,29,225,109);

fill(55,55,55);
noStroke();
rect(235,148,206,242);


fill(144,144,144);//
rect(x,148,100,242); 
x=x +speed;

//if(x>width );{
//speed=speed*-1;

fill(25,25,25);
rect(30,402,199,122);

fill(214,213,213);
rect(30,529,100,141);

fill(84,84,84);
rect(135,529,94,141); 

fill(188,188,188);//
rect(345,402,96,156);
//y=y+speed;



fill(7);
rect(235,568,206,102);

fill(27,27,27);
rect(445,402,225,225);

fill(196,197,197);
rect(445,636,225,34);



}
