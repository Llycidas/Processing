 class Circle{
    float x;
    float y;
    float r;
    boolean value = true;
    
    float color_red = random(50);
    float color_green = random(50);
    float opacity = random(50, 200);
    
    Circle(float x_, float y_){
      x = x_;
      y = y_;
      r = 0;
    }
    
    
    boolean edge(){
      return (x + r > width || x-r< 0 || y+r > height || y-r < 0);
    }

    void grow(){
      if(value){
        r = r+1;
      }
    }
    
    void create(){
      
      //stroke( color_red, color_green,150,opacity);
      //strokeWeight(2);
      noStroke();
      fill( color_red, color_green,150,opacity);
      ellipse(x,y,r*2,r*2);

}
}
