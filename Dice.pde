Die dill;
void setup()
{
  size(300, 300);
  noLoop();
}
void draw()
{
  background(#028482);
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
    text("Dice present: 25", 75, 25);
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
