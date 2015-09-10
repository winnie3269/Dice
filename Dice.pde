Die dill;
int sum=0;
void setup()
{
  size(1004, 1003);
  noLoop();
}
void draw()
{
  background(#028482);
  for (int x=2; x<=1000; x=x+50)
  {
    for (int y=50; y<=1000; y=y+50)
    {
      Die dill = new Die(x, y);
      dill.roll();
      dill.show();
      sum=sum+dill.dots;
    }
  }
  fill(0);
  text("Dice present: 400", 100, 30);
  text("Your Lucky Number:" +sum, 650, 30);
}
void mousePressed()
{
  redraw();
  sum=0;
}
class Die //models one single dice cube
{
  int dots, myX, myY;
  Die(int x, int y) //constructor
  {
    dots=1;
    myX=x;
    myY=y;
  }
  void roll()
  {
    dots=(int)(Math.random()*6)+1;
  }

  void show()
  {
    strokeWeight(4);
    fill(255);
    rect(myX, myY, 50, 50);
    textSize(20);
    if (dots==1) 
    {
      fill((int)(Math.random()*254)+1, (int)(Math.random()*254)+1, (int)(Math.random()*254)+1);
      ellipse(myX+25, myY+25, 3, 3);
    }
    if (dots==2)
    {
      fill((int)(Math.random()*254)+1, (int)(Math.random()*254)+1, (int)(Math.random()*254)+1);
      ellipse(myX+38, myY+10, 3, 3);
      ellipse(myX+10, myY+35, 3, 3);
    }
    if (dots==3)
    {
      fill((int)(Math.random()*254)+1, (int)(Math.random()*254)+1, (int)(Math.random()*254)+1);
      ellipse(myX+38, myY+10, 3, 3);
      ellipse(myX+10, myY+37, 3, 3);
      ellipse(myX+25, myY+25, 3, 3);
    }
    if (dots==4)
    {
      fill((int)(Math.random()*254)+1, (int)(Math.random()*254)+1, (int)(Math.random()*254)+1);
      ellipse(myX+38, myY+10, 3, 3);
      ellipse(myX+10, myY+10, 3, 3);
      ellipse(myX+10, myY+37, 3, 3);
      ellipse(myX+38, myY+38, 3, 3);
    }
    if (dots==5)
    {
      fill((int)(Math.random()*254)+1, (int)(Math.random()*254)+1, (int)(Math.random()*254)+1);
      ellipse(myX+38, myY+10, 3, 3);
      ellipse(myX+10, myY+10, 3, 3);
      ellipse(myX+10, myY+37, 3, 3);
      ellipse(myX+38, myY+38, 3, 3);
      ellipse(myX+25, myY+25, 3, 3);
    }
    if (dots==6)
    {
      fill((int)(Math.random()*254)+1, (int)(Math.random()*254)+1, (int)(Math.random()*254)+1);
      ellipse(myX+38, myY+10, 3, 3);
      ellipse(myX+10, myY+10, 3, 3);
      ellipse(myX+10, myY+37, 3, 3);
      ellipse(myX+38, myY+38, 3, 3);
      ellipse(myX+10, myY+25, 3, 3);
      ellipse(myX+38, myY+25, 3, 3);
    }
  }
}