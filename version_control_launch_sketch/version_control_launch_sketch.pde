ArrayList<Particle> particles;
boolean off;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);

  for (int j = 0; j < particles.size(); j++){
    particles.get(j).update();
    particles.get(j).display();
    off = particles.get(j).offScreen();
    if(off)
    {
      particles.remove(j);
    }
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}

//duo part
