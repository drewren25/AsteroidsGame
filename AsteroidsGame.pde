Spaceship NF = new Spaceship();
Stars[] bob = new Stars[450];
ArrayList <Asteroid> Rohan = new ArrayList <Asteroid>();
Health apple = new Health();
ArrayList <Bullet> banana = new ArrayList <Bullet>();
public void setup() 
{
  size(900, 900);
  background(0);
  for(int i = 0; i<bob.length; i++){  //stars, Array
    bob[i] = new Stars();
  }
  for(int j = 0; j<25; j++){  //asteroids, ArrayList
    Rohan.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<bob.length; i++){  //stars
    bob[i].show();
     } 
     for(int j = 0; j<Rohan.size(); j++){  //asteroids
     Rohan.get(j).move();
     Rohan.get(j).show();
     if(dist(NF.getX(), NF.getY(), Rohan.get(j).getX(), Rohan.get(j).getY()) <= 20){
        Rohan.remove(j);
        Rohan.add(j, new Asteroid());
  }
     }
NF.show();  //ship
  NF.move();  //ship
  apple.show();  //health
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
    if(key=='j'){    //shoot
     
    }
}