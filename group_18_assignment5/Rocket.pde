class Rocket{
  PShape r;
  float rotation, xpos, ypos, angle;
  Rocket (PShape r,float rotation, float xpos, float ypos){
    this.r = r;
    this.rotation = rotation;
    this.xpos=xpos;
    this.ypos = ypos;
  }
  
  
  void make(){
    //r.scale(40,40,40);
    r = loadShape("shuttle_rockets_and_fuel_tank.obj");
    //r = createShape(SPHERE,100);
    //r.scale(0.1);
    
  }
  
  void display() {
    /*
    pushMatrix();
    translate(width-100,(height*.5) +250,0);
    translate(this.xpos, this.ypos);
    rotateY(PI/3);
    rotateX(PI/2);
    
    pushMatrix();
    rotateZ(rotation);
    shape(r,0,0);
    popMatrix();
    
    popMatrix();
    */
    
    r.resetMatrix();
    //r.rotateY(PI/3);
    r.rotateX(PI/2);
    r.rotateY(rotation);
    r.scale(10);
    r.translate(width/2,height/2,600);
    r.translate(this.xpos, this.ypos);
    
    shape(r);
    
  }
   void move() {
    this.ypos -= 5;
    rotation += 0.03;
  
  }
}
