int stage;
PFont title;
int bigOval, smallOval;

void setup()
{
  size(displayWidth, displayHeight);
  stage = 1;
  player = new Player(); //Instance
}

Player player; //Instance of class should have lower case letter

void draw()
{
  background(0);
  
  
  //Main Menu
  if(stage == 1)
  {
   title();
   
   if(keyPressed == true)
     {
       stage = 2;
     }
  }
   
  if(stage == 2)
   {
     //Game components
     player.update();
     player.render();
   }
  
  
}
