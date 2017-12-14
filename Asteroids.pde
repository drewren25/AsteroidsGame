class Asteroid extends Floater{
  private int z;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*-6)+25;//25;
    yCorners[0] = 0;
    xCorners[1] = 15;
    yCorners[1] = (int)(Math.random()*-6)-10;//-15
    xCorners[2] = (int)(Math.random()*3)-10;
    yCorners[2] = -10;
    xCorners[3] = -15;
    yCorners[3] = (int)(Math.random()*4)+5;//5;
    xCorners[4] = 0;
    yCorners[4] = (int)(Math.random()*12)+3;//+20;
    xCorners[5] = 15;
    yCorners[5] = 10;
     myColor = color(100);
      myCenterX = (int)(Math.random()*900);
      myCenterY = (int)(Math.random()*900);
      myDirectionX = (double)(Math.random()*6)-3;
      myDirectionY = (double)(Math.random()*6)-3;
      myPointDirection = (int)(Math.random()*361);     
  }
  public void move(){    
    turn(z);{        //rotation for asteroids
      z = ((int)(Math.random()*5));
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