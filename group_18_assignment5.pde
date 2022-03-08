PShape s;
PVector position,movement;
OrbitingSystem earthSystem;
float rotation;
//3d earth model made by vadim-dembitskii and retrieved from cgtrader.com
//3d moon model made by yah-fatan and retrieved from cgtrader.com
String objEarth = "lowpoly+earth.obj";
String objMoon = "moon.obj";

void setup() {
   size(1100, 800, P3D);
   earthSystem = new OrbitingSystem(new PVector(0,0,-700), new PVector(1,-.5),s,objEarth);
  frameRate(30);
}
void draw() {
  background(0);
  //camera is set up to be almost exactly like default but closer to the z-axis
  camera(width/2.0, height/2.0, -450, width/2.0, height/2.0, 0, 0, 1, 0);
  translate(width/2, height/2, 0);
  earthSystem.display();
}
