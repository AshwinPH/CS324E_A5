PShape r;
Rocket spaceship;



void setup() {
  size(1100,600,P3D);
  r = loadShape("rocket.obj");
  //frameRate(30);
  spaceship = new Rocket(r,0.0,0.0,0);
  spaceship.make();
} 

void draw() {
  background(0);
  lights();
  spaceship.display();
  if (spaceship.ypos > height){
    spaceship.ypos = 600;
  } else {
    spaceship.move();
  }
 
}
