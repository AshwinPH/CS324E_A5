class Asteroid{
    float r;
    float theta;
    float phi;
    float v;
    int n;
    float f;
    //PShape rock;
    ArrayList<PShape> rocks;
    float[] sizes;
    
    Asteroid(float r, float theta, float phi, float v, int n, float f, ArrayList<PShape> rocks, float[] sizes){
      this.r = r;
      this.theta = theta;
      this.phi = phi;
      this.v = v;
      this.n = n;
      this. f = f;
      this.rocks = rocks;
      this.sizes = sizes;
    }
    
    void create(){
      rocks = new ArrayList<PShape>();
      sizes = new float[n];
      
      for (int i = 0; i<n; i++){
        PShape temp = loadShape("asteroid.obj");        
        rocks.add(temp);
        sizes[i] = random(10,60)*f;
        }
      
    }
    
    void display(){
      float offset = 360/n;
      float x = r*cos(radians(theta));
      float z = r*sin(radians(theta));
      theta += v;
      
      for (int i = 0; i<n; i++){
        x = r*cos(radians(theta+i*offset));
        z = r*sin(radians(theta+i*offset));
        
        rocks.get(i).resetMatrix();
        rocks.get(i).rotateY(radians(theta));
        rocks.get(i).scale(sizes[i]);
        rocks.get(i).translate(0,0,700+z);
        rocks.get(i).translate(x,x*phi,0);
      
        shape(rocks.get(i));
      }
    }
  
    
  
}
