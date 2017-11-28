class Bullet extends Floater{
  public Bullet(){
   myColor = color(255);
   myCenterX = NF.getX();
   myCenterY = NF.getY();
   myPointDirection = NF.getPointDirection();
   myDirectionX = 5 * Math.cos(1) + NF.getDirectionX();
   myDirectionY = 5 * Math.cos(1) + NF.getDirectionY();
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