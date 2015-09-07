Die dill;
void setup()
{
	size(300,300);
	noLoop();
}
void draw()
{
	for (int x=50; x<250; x=x+60)
	{
	  Die dill = new Die(x,150);
	  dill.roll;
	  dill.show;
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
		roll();
		//variable initializations here
	}
	void roll()
	{
		if(Math.random<.17)//your code here
	}
	void show()
	{
		while//your code here
	}
}
