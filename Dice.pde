Die dill;
void setup()
{
  size(300, 300);
  background(#028482);
  noLoop();
}
void draw()
{
  for (int x=1; x<299; x=x+50)
  {
    for (int y=1; y<299; y=y+50)
    {
      Die dill = new Die(x, 150);
      dill.roll();
      dill.show();
    }
  }
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
    //int dots;
    int dots = 1;//your code here
    {
      fill(0);
      ellipse(25, 175, 3, 3);
    }
  }
  void show()
  {
    for (int d=0; d<300; d++)
      strokeWeight(5);
    fill(255);
    rect(myX, myY, 50, 50);//your code here
  }
}
