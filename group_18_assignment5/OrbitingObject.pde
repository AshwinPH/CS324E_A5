class OrbitingObject{
  PShape s;
  PVector position;
  PVector movement;
  String obj;
  
  OrbitingObject (PVector position, PVector movement, PShape s, String obj){
    this.position = position;
    this.movement = movement;
    this.s = s;
    this.obj = obj;
  }

  float create(){
    PShape s = loadShape(obj);
     if (this.obj == objEarth){
      s.scale(.75);
    } else if (this.obj == objMoon){
      s.scale(.2);
    } 
    s.translate(0,0, position.z);
    shape(s, position.x, position.y);
  //println(this.obj,position.x,position.y,position.z);
  return position.z;
 
  
  }
  void orbit(){
     if (this.obj == objEarth){
      movement.x += 0.05;
    } else if (this.obj == objMoon){
      movement.x += 0.1;
    } 
    position.x += sin(movement.x)*movement.y;
    position.z += cos(movement.x)*movement.y;
  }
  
 
}
