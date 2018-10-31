class Text {
  
  //displays text for when game is over
  void gameOver() {
    textAlign(CENTER);
    fill(100);
    textSize(100);
    text("GAME OVER",width/2,height/2);
    textSize(30);
    //calculates and displays the time played
    text("You survived for "+(endTime-startTime)+" seconds!",width/2,height/2+50);
  }
  
  //displays number of lives remaining
  void lives() {
    textAlign(CENTER);
    fill(#C68016);
    textSize(20);
    text("Lives: "+life,width-70,height-20);
  }
}
