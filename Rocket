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
    r.scale(40,40,40);
    r.scale(.3);
    
  }
  
  void display() {
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
  }
   void move() {
    this.ypos -= 5;
    rotation += 0.03;
  
  }
}
