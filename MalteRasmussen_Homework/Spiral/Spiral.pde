

void setup() {
  size(700, 700);
  background(255);
  noStroke();
}

// declaring variables
float theta = 0;
float r = 10;
float x;
float y;
float off = 5.0;



void draw() {
  //creating noise for variable s (size).
  off += 0.1;
  float s = noise(off) * 20;
  
  //initializing x and y
  x = r * cos(theta);
  y = r * sin(theta);
  
  //mapping the s variable to blue variable so blue value changes according to thickness
  float blue = map(s,0,10,0,255);
  //mapping r to green variable so green value changes according to the distance from center to edge of screen
  float green = map(r,0,width/2,0,200);
  
  
  ellipseMode(CENTER);
  //creating fill using mapped red and green variables
  fill(0,green,blue);
  //creating ellipses starting from center of screen. Setting size to s variable so the size varies using noise.
  ellipse(width/2+x, height/2+y, s, s);
  //increase theta and r every draw loop
  theta+=0.05;
  r+=0.2;
}
