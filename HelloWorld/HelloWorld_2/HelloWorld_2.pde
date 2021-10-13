void setup(){
  size(800,800);
  background(240, 248, 255);
  frameRate(30);
  
}

//creates circles at mouse position
void create(){
  float width = random(80);
  noStroke();
  fill(random(10),random(10),150,random(20, 100));
  ellipse(mouseX,mouseY, width, width);
}
void draw(){
  create();
  saveFrame("output/image#####.png");
  }
  
  
  class Circle{
    float x;
    float y;
    float r;
    
    Circle(float X, float Y){
      x = X;
      y = Y;
      r = random(50);
    }
  }
