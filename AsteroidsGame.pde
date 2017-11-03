Spaceship NF = new Spaceship();
Stars[] bob = new Stars[300];
Asteroid[] Rohan = new Asteroid[25];
public void setup() 
{
  size(600, 600);
  background(0);
  for(int i = 0; i<bob.length; i++){
    bob[i] = new Stars();
  }
  for(int i = 0; i<Rohan.length; i++){
    Rohan[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  NF.show();
  NF.move();
  for(int i = 0; i<bob.length; i++){
    bob[i].show();
     }    
     for(int i = 0; i<Rohan.length; i++){
    Rohan[i] = new Asteroid();
  }
}
public void keyPressed(){
   if(key=='s'){ //hyperspace  
    for(int i = 0; i<bob.length; i++){
    bob[i].show();
  }
    NF.setX((int)(Math.random()*600));
    NF.setY((int)(Math.random()*600));
    NF.setDirectionX(0);
    NF.setDirectionY(0);
    NF.setPointDirection((int)(Math.random()*361));  
   }
    if(key=='d'){     //clockwise
      for(int i = 0; i<bob.length; i++){
    bob[i].show();
  }
  NF.show();
    NF.turn(8);
    }
    if(key=='a'){     //counter 
      for(int i = 0; i<bob.length; i++){
    bob[i].show();
  }
  NF.show();
    NF.turn(-8);
    }
    if(key=='w'){    //accelerate
      for(int i = 0; i<bob.length; i++){
    bob[i].show();
  }
  NF.show();
  NF.accelerate(.25);
    }
}