Spaceship NF = new Spaceship();
Stars[] bob = new Stars[400];
Asteroid[] Rohan = new Asteroid[20];
public void setup() 
{
  size(800, 800);
  background(0);
  for(int i = 0; i<bob.length; i++){
    bob[i] = new Stars();
  }
  for(int j = 0; j<Rohan.length; j++){
    Rohan[j] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<bob.length; i++){
    bob[i].show();
     } 
     for(int j = 0; j<Rohan.length; j++){
     Rohan[j].move();
     Rohan[j].show();
}
NF.show();
  NF.move();
  fill(255, 0, 0);
  rect(10, 10, 170, 10);
  //if(NF.myCenterX == Rohan.myCenterX && NF.myCenterY == Rohan.myCenterY);
}
public void keyPressed(){
   if(key=='s'){    //hyperspace
    NF.setX((int)(Math.random()*800));
    NF.setY((int)(Math.random()*800));
    NF.setDirectionX(0);
    NF.setDirectionY(0);
    NF.setPointDirection((int)(Math.random()*361));  
   }
    if(key=='d'){     //clockwise
    NF.turn(7);
    }
    if(key=='a'){     //counter 
    NF.turn(-7);
    }
    if(key=='w'){    //accelerate
  NF.accelerate(.25);
    }
}