class Spaceship extends Floater
{ 
  public Spaceship(){
      corners = 6;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 8;
      yCorners[0] = 0;
      xCorners[1] = -8;
      yCorners[1] = 10;
      xCorners[2] = -4;
      yCorners[2] = 2;
      xCorners[3] = -17;
      yCorners[3] = 0;
      xCorners[4] = -4;
      yCorners[4] = -2;
      xCorners[5] = -8;
      yCorners[5] = -10;
      myColor = color(255, 0, 0);
      myCenterX = 400;
      myCenterY = 400;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;     
  }
    public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return (double)myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return (double)myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}   
    public double getPointDirection(){return myPointDirection;} 
}