class OrbitingSystem extends OrbitingObject{
  OrbitingSystem(PVector position, PVector movement, PShape s, String obj){
    super(position,movement, s, obj);
  }
  
  OrbitingObject earth = new OrbitingObject(new PVector(0,0,-700), new PVector(1,-.5),s,objEarth);
  OrbitingObject moon = new OrbitingObject(new PVector(earth.position.x+100,earth.position.y,earth.position.z), new PVector(.5,-13),s,objMoon);

  void display(){
     ambientLight(0,4,130);
     directionalLight(255,179,0,0,0,1);
     pointLight(190,190,190,moon.position.x+50,moon.position.y+50,moon.position.z+50);
     spotLight(190,190,190, moon.position.x+50,moon.position.y+50,moon.position.z+50, 0, 0, 0, PI/4, 50);
     rotation += PI/60;
     pushMatrix();
     rotateY(rotation);
     earth.create();
     moon.create();
     moon.orbit();
     popMatrix();
  }
}
