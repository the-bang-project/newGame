class Ground
{
  float x = displayWidth/2;
  float y = (displayHeight/6)*5;

  float w = displayWidth;
  float h = displayHeight/3;

  void caller()
  {
    show();
  }

  void show()
  {
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
