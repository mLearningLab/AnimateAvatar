/*
  AvatarMin.pde
  Main process
*/


final String FiguraSVG = "avatar.svg"; // puppet filename
final String Fondo = "fondo.jpg";
final int W = 800;
final int H = 600;

Avatar fig;
PImage bkg;

void setup()
{
  size( W, H );
  frameRate(30);
  fig = new Avatar( FiguraSVG );
  fig.zoom(0.25);
  bkg = loadImage(Fondo);
  smooth();  
}


void draw()
{
  background(0);
  image(bkg, 0, 0, W, H); 
  strokeWeight(4);
  stroke(color(0));
  fig.draw( mouseX, mouseY);
}
