class Stars //this class does NOT extend Floater
{
  private int x, y;
  public Stars(){
    x = (int)(Math.random()*900);
    y = (int)(Math.random()*900);
  }
  public void show(){
    fill(255);
    ellipse(x, y, 3, 3);
  }
}