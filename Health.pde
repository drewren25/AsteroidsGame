class Health{
  private int a;
  public Health(){
    a = 200;
  }
  public void show(){
    fill(255, 0, 0);
    rect(0, 10, a, 10);
  for(int j = 0; j<Rohan.length; j++){
  if(dist(NF.getX(), NF.getY(), Rohan[j].getX(), Rohan[j].getY()) <= 12){
    a = a - 4;    
  }
  }
  if(a <= 0){
    text("GAME OVER" , 360, 400);
    }
  }
}