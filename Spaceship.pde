class Spaceship extends Floater
{ 
  public Spaceship(){
      corners = 13;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 9*2-10;
      yCorners[0] = 0;
      xCorners[1] = 10*2-10;
      yCorners[1] = -1*2;
      xCorners[2] = 4*2-10;
      yCorners[2] = -4*2;
      xCorners[3] = 8*2-10;
      yCorners[3] = -8*2;
      xCorners[4] = 12*2-10;
      yCorners[4] = -6*2;
      xCorners[5] = 7*2-10;
      yCorners[5] = -12*2;
      xCorners[6] = -2*2-10;
      yCorners[6] = -2*2;
      xCorners[7] = -2*2-10;
      yCorners[7] = 2*2;
      xCorners[8] = 7*2-10;
      yCorners[8] = 12*2;
      xCorners[9] = 12*2-10;
      yCorners[9] = 6*2;
      xCorners[10] = 8*2-10;
      yCorners[10] = 8*2;
      xCorners[11] = 4*2-10;
      yCorners[11] = 4*2;
      xCorners[12] = 10*2-10;
      yCorners[12] = 1*2;
      myColor = color((int)(Math.random()*205)+50, (int)(Math.random()*255), (int)(Math.random()*255));
      myCenterX = 450;
      myCenterY = 450;
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