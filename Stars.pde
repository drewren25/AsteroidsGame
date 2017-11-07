class Stars //this class does NOT extend Floater
{
  private int x, y;
  public Stars(){
    x = (int)(Math.random()*800);
    y = (int)(Math.random()*800);
  }
  public void show(){
    fill(255);
    ellipse(x, y, 1, 1);
  }
}