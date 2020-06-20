ArrayList<Dot> dots;
int nbrDots;
int radiusCircle;
int radiusDots;
float incrementAngle;

void setup(){
  size(600, 600);
  frameRate(30);
  
  dots = new ArrayList<Dot>();
  
  nbrDots = 10;
  radiusCircle = 200;
  radiusDots = 20;
  incrementAngle = PI/nbrDots;
  
  for(int i=0; i<nbrDots; i++){
    Dot dot = new Dot(i*PI/nbrDots);
    dots.add(dot);
  }
}

void draw(){
  background(0);
  
  translate(width/2, height/2);
  
  stroke(100);
  strokeWeight(1);
  noFill();
  ellipse(0, 0, 2*radiusCircle, 2*radiusCircle);
  
  for(int i=0; i<nbrDots; i++){
    rotate(incrementAngle);
    line(0, -radiusCircle, 0, radiusCircle);
  }
  
  stroke(255);
  fill(255);
  
  for(Dot dot: dots){
    dot.update();
    dot.display();
  }
}
