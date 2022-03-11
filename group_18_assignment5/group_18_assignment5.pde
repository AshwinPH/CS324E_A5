PShape s;
PVector position,movement;
OrbitingSystem earthSystem;
float rotation;
//3d earth model made by vadim-dembitskii and retrieved from cgtrader.com
//3d moon model made by yah-fatan and retrieved from cgtrader.com
String objEarth = "lowpoly+earth.obj";
String objMoon = "moon.obj";

Asteroid asteroid;
Asteroid asteroid2;
ArrayList<PShape> rocks;
ArrayList<PShape> rocks2;
float[] sizes;
float[] sizes2;
PShape r;
Rocket spaceship;

void setup() {
   size(1100, 800, P3D);
   spaceship = new Rocket(r,0.0,0.0,0);
   spaceship.make();
   
   earthSystem = new OrbitingSystem(new PVector(0,0,-700), new PVector(1,-.5),s,objEarth);
   
   asteroid = new Asteroid(width+600,90,0.2,1,20,1,rocks,sizes);
   asteroid.create();
   asteroid2 = new Asteroid(width+1000,5,-0.4,0.5,8,2,rocks2,sizes2);
   asteroid2.create();
   
  frameRate(30);
}
void draw() {
  background(0);
  //camera is set up to be almost exactly like default but closer to the z-axis
  camera(width/2.0, mouseY, -450, 
        mouseX, height/2.0, 0,
        0, 1, 0);
  
  spaceship.display();
  if (spaceship.ypos < -1*height/2 - 200){
    spaceship.ypos = height/2+200;
  } else {
    spaceship.move();
  }
  
  translate(width/2, height/2, 0);
  earthSystem.display();
  asteroid.display();
  asteroid2.display();
  
  
}
