Die dill;
void setup()
{
  size(300, 300);
  background(#028482);
  noLoop();

}
void draw()
{
  for (int x=50; x<250; x=x++)
  {
    Die dill = new Die(x, 150);
    //dill.roll();
    dill.show();
  }
  //your code here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;//variable declarations here
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;//variable initializations here
  }
 void roll()
 {
   int dots;
  if dots = ((int)(Math.random()*6)+1)//your code here
   {
      
  }
     void show()
    {
      for (int d=0; d<300; d++)
      strokeWeight(5);
      fill(255);
      rect(myX, myY, 50, 50);//your code here
      //ellipse(
    }
  }
