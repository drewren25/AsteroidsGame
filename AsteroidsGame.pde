Spaceship NF = new Spaceship();
Stars[] bob = new Stars[450];
ArrayList <Asteroid> Rohan = new ArrayList <Asteroid>();
Health apple = new Health();
ArrayList <Laser> banana = new ArrayList <Laser>();
ArrayList <rainbowBeam> acer = new ArrayList <rainbowBeam>();
ArrayList <Bullet> smart = new ArrayList <Bullet>();
public void setup() {
  size(900, 900);
  background(0);
  smart = new ArrayList <Bullet>();
  banana = new ArrayList <Laser>();
  acer = new ArrayList <rainbowBeam>();
  for(int i = 0; i<bob.length; i++){  //stars, Array
    bob[i] = new Stars();
  }
  for(int j = 0; j<25; j++){
    Rohan.add(j, new Asteroid());
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
  for(int g=0; g<banana.size(); g++){
    banana.get(g).show();
    banana.get(g).move();
  }
  for(int t=0; t<acer.size(); t++){
    acer.get(t).show();
    acer.get(t).move();
  }
  for(int f = 0; f<Rohan.size(); f++){
    for(int g=0; g<banana.size(); g++){
      if(dist(banana.get(g).getX(), banana.get(g).getY(), Rohan.get(f).getX(), Rohan.get(f).getY()) <= 15){
        Rohan.remove(f);
        Rohan.add(f, new Asteroid());
        banana.remove(g);
      }
    }
  }
  for(int y = 0; y<Rohan.size(); y++){
    for(int b=0; b<acer.size(); b++){
      if(dist(acer.get(b).getX(), acer.get(b).getY(), Rohan.get(y).getX(), Rohan.get(y).getY()) <= 35){
        Rohan.remove(y);
        Rohan.add(y, new Asteroid());
        acer.remove(b);
  }
    }
  }
     }
     for(int h = 0; h<smart.size(); h++){
    smart.get(h).show();
    smart.get(h).move();
  }
     for(int v = 0; v<Rohan.size(); v++){
    for(int c=0; c<smart.size(); c++){
      if(dist(smart.get(c).getX(), smart.get(c).getY(), Rohan.get(v).getX(), Rohan.get(v).getY()) <= 15){
        Rohan.remove(v);
        Rohan.add(v, new Asteroid());
        smart.remove(c);
      }
    }
     }
NF.show();  //ship
  NF.move();  //ship
  apple.show();//health
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
  NF.accelerate(.75);
    }
    if(key=='1'){    //laser
     for(int g = 0; g<1; g++){   
       banana.add(new Laser());
  }
    }
    if(key == '2'){    //rainbowBeam
      for(int i= 0; i<1; i++){
        acer.add(new rainbowBeam());
      }
    }
    if(key == ' '){    //regbullet
      for(int q = 0; q<1; q++){
        smart.add(new Bullet());
      }
    }
}