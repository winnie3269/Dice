Die dill;
void setup()
{
  size(300, 300);
  background(#028482);
  noLoop();
}
void draw()
{
  for (int x=2; x<=290; x=x+49)
  {
    for (int y=50; y<=290; y=y+49)
    {
      Die dill = new Die(x, y);
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
    dots=(int)(Math.random()*7)-1;
    myX=x;
    myY=y;//variable initializations here
  }
  void roll()
  {
    if (dots==1) //your code here
    {
      fill(0);
      ellipse(myX/2, myY/2, 3, 3);
    }
    if (dots==2)
    {
      fill(0);
      ellipse(myX/4, myY/2, 3, 3);
      ellipse(myX/4, myY/4, 3, 3);
    }
    //if (dots==3)
    // {
    // ellipse(
    //   }
  }
  void show()
  {
    strokeWeight(5);
    fill(255);
    rect(myX, myY, 50, 50);//your code here
    textSize(20);
    text("Dice present: 25", 75, 25);
  }
}
//find a way to display the dots more efficiently