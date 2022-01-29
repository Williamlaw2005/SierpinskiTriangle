public void setup()
{
  
  size(1000,700);
}
public void draw()
{
  background(0);
  noStroke();
  sierpinski(500,350,mouseY);
  
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  fill(100);
  
  if(len <= 10)
    triangle(x,y,x+len/2,y-len,x+len,y);
  else{
    sierpinski(x+len/4,y+len/4,len/2);
    sierpinski(x-len/4,y+len/4,len/2);
    sierpinski(x,y-len/4,len/2);
  }
}
