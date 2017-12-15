Particle[] spicey;

void setup() {
  size(500, 500);
  background(255);
  spicey = new Particle[200];
  for (int i = 0; i < spicey.length; i++) {
    spicey[i] = new NormalParticle();
  }
  spicey[1] = new JumboParticle();
  spicey[2] = new OddballParticle();
  noStroke();
}
  void draw() {
    background(255);
    for (int i = 0; i < spicey.length; i++){
      spicey[i].move();
      spicey[i].show();
    }
  }
  
  class NormalParticle implements Particle {
    double x, y, speed, angle;
    int Color;
    
    NormalParticle(){
      x = width/2;
      y = height/2;
      Color = 0;
      speed = Math.random() * 5;
      angle = Math.random() * Math.PI*2;
    }
    public void move(){
     y = y + Math.cos(angle) * speed;
     x = x + Math.sin(angle) * speed;
    }
    public void show(){
      fill(Color);
      ellipse((int)x, (int)y, 10, 10);
    }
  }
  
  interface Particle
  {
    public void move();
    public void show();
  }
  
  class OddballParticle implements Particle //uses an interface
  {
    double x, y, speed, angle;
    int r, g, b;
    
    OddballParticle(){
      x = width/2;
      y = height/2;
      speed = Math.random() * 25;
      angle = Math.random() * Math.PI*2;
      r = (int)Math.random() * 255;
      g = (int)Math.random() * 255;
      b = (int)Math.random() * 255;
    }
    public void move(){
     y = y + Math.cos(angle) * speed;
     x = x + Math.sin(angle) * speed;
    }
    public void show(){
      fill(r, g, b);
      ellipse((int)x, (int)y, 20, 20);
    }
  }
  
  class JumboParticle implements Particle//uses inheritance
  {
    double x, y, speed, angle;
    int Color;
    
    JumboParticle(){
      x = width/2;
      y = height/2;
      Color = 0;
      speed = Math.random() * 3;
      angle = Math.random() * Math.PI*2;
    }
    public void move(){
     y = y + Math.cos(angle) * speed;
     x = x + Math.sin(angle) * speed;
    }
    public void show(){
      fill(234, 122, 17);
      ellipse((int)x, (int)y, 70, 70);
    }
  }

