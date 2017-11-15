class Health{
  private int a;
  public Health(){
    a = 200;
  }
  public void show(){
    fill(255, 0, 0);
    rect(0, 10, a, 10);
  for(int j = 0; j<Rohan.length; j++){
  if(NF.getY() == Rohan[j].getY() && NF.getX() == Rohan[j].getX()){ 
    a = a - 10;   
  }
  }
  if(a <= 0){
    text("GAME OVER" , 360, 400);
    }
  }
  }