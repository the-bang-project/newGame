Player p;
Ground g;
Controls c;

void setup()
{
  // Set sketch parametres.
  size(displayWidth, displayHeight, P2D);
  // Init.
  p = new Player();
  g = new Ground();
  c = new Controls();
  // Misc.
  orientation(PORTRAIT);
}

void draw()
{
  background(#1976D2);
  g.caller();
  p.caller();
  c.caller();
}
