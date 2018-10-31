Object myObject = new Object();
Event myEvents = new Event();
Text myTexts = new Text();

//declaring global variables
boolean ready;
float pointsX;
int time;
int newTime=0;
int startTime;
int endTime;
int pVel;
int pVelReset=6;
int fullLife=3;
int life=3;

//creating array for the point objects
Points[] pointsArray = new Points[4];

void setup() {
  size(700, 700);

//calling a reset method for myObject to reset x an y positions
  myObject.reset();
  //making sure the ready boolean is set to false at beginning
  ready=false;

//placing point objects into the pointsArray with varying positions
  for (int i=0; i<pointsArray.length; i++) {
    pointsArray[i] = new Points(random(width), 200-(200*i));
  }
}


void draw() {
  background(0);
  // displaying the myObject at all times
  myObject.display();

//if ready is true call event method: fly
  if (ready) {
    myEvents.fly();
  }
  
  //displays instruction to start whenever the game is not running
  if (!ready) {
    textAlign(CENTER);
    textSize(30);
    fill(100);
    text("Press UP key to start",width/2,height-200);
  }

//set time variable to count seconds from startup
  time=millis()/1000;

//calls gameOver method for the Event object when all lives are lost
  if (life==0) {
    myEvents.gameOver();
  }
  println("time "+time);
}

//sets ready to true and resets variables when starting game
void keyPressed() {
  if (keyCode == UP && !ready) {
    ready = true;
    newTime=time;
    pVel=pVelReset;
    life=fullLife;
    startTime=millis()/1000;
  }
}
