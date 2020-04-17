//Utilitzem unes de les classes que hem vist en classe per tal de fer mouse els objectes cap al mouse, però en aquest cas de forma random.
class Mover 
{
  
  PVector location = new PVector(random(width),random(height));
  

  
  PVector velocity;
  
   PVector acceleration;
   float topspeed;
   
   
   Mover()
   {
      velocity = new PVector(0,0);
      
      topspeed = 3;
     
   }
   
   
   void update()
   {
    
     
        
     PVector mouse = new PVector(random(mouseX),random(mouseY));
     PVector dir = PVector.sub(mouse,location);
     dir.normalize();
     dir.mult(0.1);
      acceleration = dir;
      
      velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
   fill(color( random(255),random(255),random(255)));
 
     
   }
  
  
  
    void checkEdges()
   {
     
      if(location.x > width)
      {
        
         location.x = 0; 
        
      } else if(location.x < 0)
      {
        
        location.x = width;
        
      }
      
      
      if(location.y > height)
      {
        
         location.y = 0; 
                
      }  else if ( location.y < 0)
      {
        
       location.y = height; 
        
      }
     
     
     
   }
   
   
   
 
 }
