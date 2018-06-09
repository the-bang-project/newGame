class Player
{
  float x = displayWidth/2;
  float y = (displayHeight/3)*2;
  
  float r = displayWidth/8;
  
  void caller()
  {
    show();
  }
  
  void show()
  {
    noStroke();
    fill(#512DA8);
    ellipse(x, y-(r/2), r, r);
  }
}
