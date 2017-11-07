class Asteroid extends Floater{
  private int rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 20;
    yCorners[0] = 0;
    xCorners[1] = 12;
    yCorners[1] = -12;
    xCorners[2] = -8;
    yCorners[2] = -8;
    xCorners[3] = -12;
    yCorners[3] = 4;
    xCorners[4] = 0;
    yCorners[4] = 0;
    xCorners[5] = 12;
    yCorners[5] = 8;
     myColor = color(100);
      myCenterX = (int)(Math.random()*800);
      myCenterY = (int)(Math.random()*800);
      myDirectionX = (double)(Math.random()*11)-5;
      myDirectionY = (double)(Math.random()*11)-5;
      myPointDirection = (int)(Math.random()*361);     
  }
  public void move(){
    turn(rotSpeed);{
      rotSpeed = ((int)(Math.random()*5));
    }
    super.move();
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