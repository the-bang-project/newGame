class Controls
{
  // Go left zone;
  float leftStart = 0;
  float leftEnd = displayWidth/3;
  
  // Jump zone.
  float jumpStart = displayWidth/3;
  float jumpEnd = (displayWidth/3)*2;
  
  // Go right zone;
  float rightStart = (displayWidth/3)*2;
  float rightEnd = displayWidth;
  
  void caller()
  {
    right();
    left();
    jump();
  }
  
  void right()
  {
    if(mousePressed == true && mouseX < rightEnd && mouseX > rightStart) {
      p.x += displayWidth/100;
    }
  }
  
  void left()
  {
    if(mousePressed == true && mouseX < leftEnd && mouseX > leftStart) {
      p.x -= displayWidth/100;
    }
  }
  
  void jump()
  {
    if(mousePressed == true && mouseX < jumpEnd && mouseX > jumpStart) {
      bounce();
    }
  }
  
  void bounce()
  {
  }
}
