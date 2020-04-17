class Mover{
  
   //Vectors per a la localització del nostre objecte i la  seva velocitat
  
   PVector location;
   PVector velocity;
   
   //Vector per a afegir una acceleració al moviment que ja té aplicat
   
    PVector acceleration;
    
    //Variable per a controlar l'acceleració màxima
    
   float topspeed;
   
   Mover()
   {
     
      //Inicialitzem els Vectors mencionats anteriorment
     
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
  
     //Acceleració màxima
    
    topspeed = 3;
    
    
   }
   
   //Mètode per a actualitzar la posició del nostre objecte
   
   void update()
   {
     
     //Per tal que el moviment sigui aleatori fem un de la classe "PVector" amb el mètode "random2D". 
     //D'eixa forma els valors del vector a cada moment seran completament distints.
     
     acceleration = PVector.random2D();
    
     acceleration.mult(random(2));
      
      velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    
 
     
   }
   
   //Mètode per a mostrar el nostre objecte
   
   void display()
   {
     
      stroke(0);
      fill(175);
      ellipse(location.x, location.y, 16, 16);
     
   }
   
   //Mètode que comprova si el nostre objecte ha sortit de la finestra
   
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
