ArrayList<Circle> c = new ArrayList<Circle>();

void setup(){
  size(800,800);
  frameRate(70);
}


void draw(){
  saveFrame("other3/image#####.png");
  background(240, 248, 255);
  int amount = 10;
  int count = 0;
  int finite = 0;
  
  //terminates adding new circles
  while(count < amount){
    Circle newCir = newCircle();
    if(newCir != null){
      c.add(newCir);
      count++;
    }
    finite++;
    if(finite > 300){
      noLoop();
      break;
    }
    
  }
  
  //adds circles at places where no other circle is and stops growing at a random radius
  for(Circle cir : c){
    if(cir.value == true){
      if(cir.edge()){
        cir.value = false;
    }else{
      for(Circle otherCircles : c){
        if(cir != otherCircles){
        float d = dist(cir.x, cir.y, otherCircles.x, otherCircles.y); 
          if(d - 1 < cir.r + otherCircles.r){ //distance between two circles smaller than the sum of their radius
            cir.value = false;
            break;
          }
        }
      }
    }
    }
    cir.create();
    cir.grow();
  }
}




Circle newCircle(){
  float x = random(width);
  float y = random(height);
  
  boolean valid = true;
  for(Circle cir: c){
    float d = dist(x,y,cir.x,cir.y);
    if(d< cir.r){
      valid = false;
      break;
    
    }
  }
    if(valid == true){
      return new Circle(x,y);
    }else{
      return null;
    }
  }
  
  
 


    
    
  
