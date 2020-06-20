class Dot{
  float pos;
  float time;
  float radius;
  float angle;
  
  Dot(){
    this.pos = 0;
    this.time = 0;
    this.radius = radiusDots;
    this.angle = incrementAngle;
  }
  
  Dot(float t){
    this.pos = sin(t) * radiusCircle;
    this.time = t;
    this.radius = radiusDots;
    this.angle = incrementAngle;
  }
  
  void update(){
    this.time += 0.1;
    this.pos = sin(this.time) * radiusCircle;
  }
  
  void display(){
    rotate(this.angle);
    ellipse(0, this.pos, radius, radius);
  }
}
