class Spaceship extends Floater
{ 
  public Spaceship(){
      corners = 7;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 8;
      yCorners[0] = -1;
      xCorners[1] = 8;
      yCorners[1] = 1;
      xCorners[2] = -8;
      yCorners[2] = 10;
      xCorners[3] = -4;
      yCorners[3] = 2;
      xCorners[4] = -17;
      yCorners[4] = 0;
      xCorners[5] = -4;
      yCorners[5] = -2;
      xCorners[6] = -8;
      yCorners[6] = -10;
      myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
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