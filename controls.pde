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

  // Bouncing stuff.
  boolean bouncing = false;
  float bounce = displayHeight/50;
  float orgBounceInc = displayHeight/50;
  float bounceInc = displayHeight/50;

  boolean bounceUp = false;
  boolean bounceDown = false;

  void caller()
  {
    right();
    left();
    jump();
    bounce();
  }

  void right()
  {
    if (mousePressed == true && mouseX < rightEnd && mouseX > rightStart) {
      p.x += displayWidth/100;
    }
  }

  void left()
  {
    if (mousePressed == true && mouseX < leftEnd && mouseX > leftStart) {
      p.x -= displayWidth/100;
    }
  }

  void jump()
  {
    if (mousePressed == true && mouseX < jumpEnd && mouseX > jumpStart) {
      bouncing = true;
      bounceUp = true;
    }
  }

  void bounce()
  {
    if (bouncing == true) //If Player is in bouncing state.
    {
      if (bounceUp == true)
      {
        p.y -= bounce; //Bounce is added to Y.
        bounce -= bounceInc; //Bounce speed is decreased over time.
        if (bounce <= 0) { //If the bounce arc is over.
          bounceUp = false; //Player is no longer bouncing.
          bounce = orgBounceInc; //Reset bounce value for next time.
        }
      }
    }
  }
}
