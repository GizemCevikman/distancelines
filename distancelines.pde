particul p1;


ArrayList<particul> clones = new ArrayList<particul>();
int numparticul = 150;

void setup() {
  size(800, 500);
  background(255);
  p1= new particul();
  for (int i = 0; i < numparticul; i++) {
    particul c = new particul();
    c.x = int(random(width));
    c.y = int(random(height));
    clones.add(c);
  }
}

void draw() {
  background(10, 20, 30);
  noStroke();
  fill(105, 3, 137);
   for (int i = 0; i < numparticul; i++) {
    for (int j = 0; j < numparticul; j++) {
      float distance = dist(clones.get(i).posx,clones.get(i).posy,
     clones.get(j).posx,clones.get(j).posy);

      if(distance < 90) {
        stroke(random(100));
        line(clones.get(i).posx,clones.get(i).posy,
      clones.get(j).posx,clones.get(j).posy);
        }
      }
    clones.get(i).display();
  }
}