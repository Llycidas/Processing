 class Circle{
 float x;
 float y;
 float r;
 
 float color_red = random(50);
float color_green = random(50);;
float opacity = random(20,150);
 
 Circle(float X, float Y){
   x = X;
   y = Y;
   r = random(50);
 }
   void create(){
     noStroke();
     fill( color_red, color_green,150,opacity);
     ellipse(x,y,r*2,r*2);
   }
 }
