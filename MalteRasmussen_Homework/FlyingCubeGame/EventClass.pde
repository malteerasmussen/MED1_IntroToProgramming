class Event {


  //method that "starts the game"
  void fly() {  
    //for loop to call point object methods for the entire pointsArray
    for (int i=0; i<pointsArray.length; i++) {
      pointsArray[i].display();
      pointsArray[i].move();
      pointsArray[i].speedUp();

      //Checks for collision between Object and points
      if (myObject.y-(myObject.r/2) < pointsArray[i].y+(pointsArray[i].r/2) && myObject.y+(myObject.r/2) > pointsArray[i].y-(pointsArray[i].r/2)
        && mouseX-(myObject.r/2) < pointsArray[i].x+(pointsArray[i].r/2) && mouseX+(myObject.r/2) > pointsArray[i].x-(pointsArray[i].r/2)) {
        pointsArray[i].hit();
      }
      //sets an end time to use to determine survival time
      if (life==0) {
        endTime=millis()/1000;
      }
    }
    myObject.fly();
    myTexts.lives();
  }


  //gameOver method to switch ready to false and display text
  void gameOver() {
    ready=false;
    myObject.reset();
    keyCode=DOWN;
    myTexts.gameOver();
  }
}
