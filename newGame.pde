Player p;
Ground g;

void setup()
{
  // Set sketch parametres.
  size(displayWidth, displayHeight, P2D);
  // Init.
  p = new Player();
  g = new Ground();
  // Misc.
  orientation(PORTRAIT);
}

void draw()
{
  background(#1976D2);
  g.caller();
  p.caller();
}
