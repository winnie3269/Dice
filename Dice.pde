Die dill;
void setup()
{
  size(300, 300);
  background(#028482);
  noLoop();
}
void draw()
{
  for (int x=5; x<299; x=x+60)
  {
    {
      Die dill = new Die(x, x);
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
  int dots, myX, myY;//variable declarations here
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
      ellipse(myX, myY, 3, 3);
    }
  }
  void show()
  {
    strokeWeight(5);
    fill(255);
    rect(myX, myY, 50, 50);//your code here
  }
}
