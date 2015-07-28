/*
  AvatarMin.pde
  Main process
*/

final String FiguraSVG = "avatar.svg"; // puppet filename
final int W = 400;
final int H = 400;

Avatar fig;

void setup()
{
  size( W, H );
  frameRate(30);
  fig = new Avatar( FiguraSVG );
  fig.zoom(0.25);
  smooth();
}

void draw()
{
  background(255);
//  strokeWeight(4);
//  stroke(color(0));
  fig.draw( mouseX, mouseY);
}
