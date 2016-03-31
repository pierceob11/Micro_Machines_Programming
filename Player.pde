class Player
{
  //Field
  PVector position;
  PVector forward;
  float w = 75, halfW;
  float theta;
  
  //Constructor
  Player()
  {
    halfW = w * 0.5f;
    position = new PVector(width * 0.1f, height * 0.75f);
    forward = new PVector(0, -1);
  }
  
  //Methods
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
    if(keyPressed)
    {
      if(keyCode == LEFT)
      {
        theta -= 0.3f;
      }
      if(keyCode == RIGHT)
      {
        theta += 0.01f;
      }
      if(keyCode == UP)
      {
        position.add(forward);
        //THis means position += forward
      }
      if(keyCode == DOWN)
      {
        position.sub(forward);
        // position -= forward
      }
    }
  }
  
  void render()
  {
    stroke(255);
    pushMatrix(); //Store the old tranform
    translate(position.x, position.y); //Write these in the opposite order you want them to happen
    rotate(theta); //This means rotate first then translate
    line(-halfW, halfW, 0, -halfW);
    line(halfW, halfW, 0, -halfW);
    line(-halfW, halfW, 0, 0);
    line(halfW, halfW, 0, 0);
    popMatrix(); //Restore the old transform 

  } 
}
