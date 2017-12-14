class Laser extends Floater{
  public Laser(){
   myCenterX = NF.getX();
   myCenterY = NF.getY();
   myPointDirection = NF.getPointDirection();
   double dRadians = myPointDirection*(Math.PI/180);
   myDirectionX = 5 * Math.cos(dRadians) + NF.getDirectionX();
   myDirectionY = 5 * Math.sin(dRadians) + NF.getDirectionY();
   
}
public void show(){
  noStroke();
  fill(255, 0, 0);
  ellipse((float)(myCenterX), (float)(myCenterY), 7, 7);
}
public void move (){
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }
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