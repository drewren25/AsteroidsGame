Spaceship NF = new Spaceship();
Stars[] bob = new Stars[400];
ArrayList <Asteroid> Rohan = new ArrayList <Asteroid>();
Health apple = new Health();
public void setup() 
{
  size(800, 800);
  background(0);
  for(int i = 0; i<bob.length; i++){
    bob[i] = new Stars();
  }
  for(int j = 0; j<25; j++){
    Rohan.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<bob.length; i++){
    bob[i].show();
     } 
     for(int j = 0; j<Rohan.size(); j++){
     Rohan.get(j).move();
     Rohan.get(j).show();
     }
NF.show();
  NF.move();
  apple.show();
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
    NF.turn(9);
    }
    if(key=='a'){     //counter 
    NF.turn(-9);
    }
    if(key=='w'){    //accelerate
  NF.accelerate(.5);
    }
}