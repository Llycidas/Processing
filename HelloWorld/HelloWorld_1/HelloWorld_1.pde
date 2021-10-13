ArrayList<Circle> c = new ArrayList<Circle>();

void setup(){
  size(800,800);
  frameRate(30);
  
}

void draw(){
  background(240, 248, 255);
  c.add(new Circle(random(800), random(800)));
  for(Circle cir : c){
    cir.create();
  }
  saveFrame("output1/images#####.png");

}
  
  



  
  
 


    
    
  
