/*
  Avatar.pde
  Avatar class
*/

class Avatar // SVG/Shape DOM Tree
{
  PShape root;
  float width, height; // current size
  float w0, h0; // original size
  float cx, cy; // mouse center
  String name; // filename

  Avatar( String fname )
  {
    this.root = loadShape( fname );  // Reads SVG file
    this.name = fname;
    this.w0 = this.width = this.root.width;
    this.cx = this.width / 2.0;
    this.h0 = this.height = this.root.height;
    this.cy = this.height / 2.0;
  }

 void zoom(float s) {
   this.root.scale(s);
   this.width = s * this.w0;
   this.cx = this.width / 2.0;
   this.height = s * this.h0;
   this.cy = this.height / 2.0;
 }

 void draw(int x, int y) {
   shape( this.root, x-(int)this.cx, y-(int)this.cy ); // Draw Puppet
 }

} // Avatar class
