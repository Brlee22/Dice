void setup()
{
	size(500, 500);
	noLoop();
}

int totalValue = 0;

void draw()
{
	background(0, 0, 0);
	for (int i = 25; i < 400; i += 100) {
		for(int j = 25; j < 400; j += 100){
		Dice diceOne = new Dice(i, j);
		diceOne.show();
		diceOne.roll();
		}
	}
	fill(255, 255, 255);
	textSize(30);
	text("Total: " + totalValue, 150, 450);
	
}

void mousePressed()
{
	redraw();
	redraw();
	totalValue = 0;
}
class Dice //models one single dice cube
{

	int diceX, diceY, numDots;//variable declarations here
	Die(int x, int y) //constructor
	{
		diceX = x;
		diceY = y;
		numDots = (int)(Math.random()* 7) + 1;//variable initializations here

	}
	void roll()
	{
		
		//your code here
	}
	void show()
	{
		//your code here
		fill(120, 120, 120);
		rect(diceX, diceY, 50, 50);
		
		if(numDots == 1){
			noStroke();
			fill(0, 0, 0);
			ellipse(diceX + 25, diceY + 25, 10,10);
			totalValue++;
		}
		else if(numDots == 2)
		{
			noStroke();
			fill(0, 0, 0);
			ellipse(diceX + 10, diceY + 10, 10, 10);
			ellipse(diceX + 40, diceY + 40, 10, 10);
			totalValue += 2;
		}
		else if (numDots == 3)
		{
			noStroke();
			fill(0, 0, 0);
			ellipse(diceX + 25, diceY + 25, 10,10);
			ellipse(diceX + 10, diceY + 10, 10, 10);
			ellipse(diceX + 40, diceY + 40, 10, 10);
			totalValue += 3;
		}
		else if(numDots == 4)
		{
			noStroke();
			fill(0, 0, 0);
			ellipse(diceX + 40, diceY + 10, 10, 10);
			ellipse(diceX + 40, diceY + 40, 10, 10);
			ellipse(diceX + 10, diceY + 40, 10, 10);
			ellipse(diceX + 10, diceY + 10, 10, 10);
			totalValue += 4;
		}
		else if(numDots == 5)
		{
			noStroke();
			fill(0, 0, 0);
			ellipse(diceX + 25, diceY + 25, 10,10);
			ellipse(diceX + 40, diceY + 10, 10, 10);
			ellipse(diceX + 40, diceY + 40, 10, 10);
			ellipse(diceX + 10, diceY + 40, 10, 10);
			ellipse(diceX + 10, diceY + 10, 10, 10);
			totalValue += 5;
		}
		else if(numDots == 6)
		{
			noStroke();
			fill(156, 0, 76);
			ellipse(diceX + 40, diceY + 10, 10, 10);
			ellipse(diceX + 40, diceY + 40, 10, 10);
			ellipse(diceX + 10, diceY + 40, 10, 10);
			ellipse(diceX + 10, diceY + 10, 10, 10);
			ellipse(diceX + 10, diceY + 25, 10, 10);
			ellipse(diceX + 40, diceY + 25, 10, 10);	
			totalValue += 6;
			
		}
	
	}
}
