private int limit = 600;
public void setup()
{
  size(600,600);
}
public void draw()
{
  sierpinski(100,500,400);
}
public void mouseDragged()
{
  if(mouseX > 1){
    limit = mouseX;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if(len < limit){
    triangle(x,y,x+len,y,x+len/2,y-len);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
