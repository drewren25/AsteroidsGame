class Health{ //does NOT extend floater
  private int a;
  public Health(){
    a = 200;
  }
  public void show(){
    fill(255, 0, 0);
    rect(0, 10, a, 10);
  for(int j = 0; j<Rohan.size(); j++){
  if(dist(NF.getX(), NF.getY(), Rohan.get(j).getX(), Rohan.get(j).getY()) <= 20){
    a = a - 5;    
  }
  }
  if(a <= 0){
    text("GAME OVER" , 420, 450);
    }
  }
}