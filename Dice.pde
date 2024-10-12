Die bob;
int x = 50;
int y = 50; //change these values later
int z;
int sum = 0;

//create a for loop that calls bob inside the draw function & 
//within that loop return the total somehow

void setup()
{
  noLoop();
  size(800, 830);
}
void draw()
{
  background(59, 59, 174);
  //text(mouseX, 20, mouseX, 80);

  //text(mouseY, 30, mouseY, 80);

  for (int y = 100; y < 770; y += 70) { //rows
    for (int x = 60; x < 750; x += 70) { //columns


      Die bob = new Die(x, y);
      bob.show();
      
      sum = sum + z;
    }
  } //end of nested for loops
  
  fill(0);
  textSize(30);
  text("The sum is " + sum, 295, 45);
  
}
void mousePressed()
{
  redraw();
 
}
class Die //models one single dice cube
{
  //member variable declarations here
 int myX, myY;
  Die(int x, int y) //constructor
  {
     myX = x;
     myY = y;
     
  }
  void roll()
  {
     
  }
  void show()
  {
    
     z = (int)(Math.random()* 6 + 1);
    //this is the basic dice shape
    //fill((int)(Math.random()), (int)(Math.random()), (int)(Math.random()));
    fill(255);
    rect(myX, myY, 50, 50);
    ellipse(myX, myY, 10, 10); //top right


    ellipse(myX + 50, myY, 10, 10); //top left


    ellipse(myX, myY + 50, 10, 10); //bottom right


    ellipse(myX + 50, myY + 50, 10, 10); //bottom left

    noStroke();
    rect(myX - 2, myY- 2, 53, 53); //cahnge this later - maybe move this to the bottom 
    rect(myX + 45, myY, 10, 50); //right edge
    rect(myX - 5, myY, 10, 50); //left edge
    rect(myX, myY - 5, 50, 10); //top edge
    rect(myX, myY + 45, 50, 10); //bottom edge
    
    //these are the if statements used to make the dots appear 

    if (z == 1) {

      fill(255, 0, 0);
      ellipse(myX + 25, myY + 25, 13, 13);
    } 
    
    if (z == 2) {

      fill((int)(Math.random()* 255), (int)(Math.random()* 255), (int)(Math.random()* 255));
      ellipse(myX + 13, myY + 13, 10, 10);
      ellipse(myX + 37, myY + 37, 10, 10);
    }
    
    if(z == 3) {

      fill((int)(Math.random()* 255), (int)(Math.random()* 255), (int)(Math.random()* 255));
      ellipse(myX + 13, myY + 13, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 37, myY + 37, 10, 10);
    } 
    
    if(z == 4) {

      fill((int)(Math.random()* 255), (int)(Math.random()* 255), (int)(Math.random()* 255));
      ellipse(myX + 10, myY + 13, 10, 10); //top left
      ellipse(myX + 10, myY + 39, 10, 10); //bottom left
      ellipse(myX + 40, myY + 13, 10, 10); //top right
      ellipse(myX + 40, myY + 39, 10, 10); //bottom right
    }
    
    if (z == 5) {

      fill((int)(Math.random()* 255), (int)(Math.random()* 255), (int)(Math.random()* 255));

      // move the top and bottoms to be slightly further out and a bit lower 
      ellipse(myX + 10, myY + 13, 10, 10); //top left
      ellipse(myX + 10, myY + 39, 10, 10); //bottom left
      ellipse(myX + 40, myY + 13, 10, 10); //top right
      ellipse(myX + 40, myY + 39, 10, 10); //bottom right

      ellipse(myX + 25, myY + 25, 10, 10); //middle dot
    }
    
    if (z == 6) {

      fill((int)(Math.random()* 255), (int)(Math.random()* 255), (int)(Math.random()* 255));
      ellipse(myX + 13, myY + 13, 10, 10); //top left
      ellipse(myX + 13, myY + 26, 10, 10); //middle left
      ellipse(myX + 13, myY + 39, 10, 10); //bottom left

      ellipse(myX + 37, myY + 13, 10, 10); //top right
      ellipse(myX + 37, myY + 26, 10, 10); //middle right
      ellipse(myX + 37, myY + 39, 10, 10); //bottom right
    } //end of if statements

   
  } //end of show()
}


