class Mover{
  
   //Vectors per a la localització del nostre objecte i la  seva velocitat
   
   PVector location;
   PVector velocity;
   
   //Vector per a afegir una acceleració al moviment que ja té aplicat
   
    PVector acceleration;
    
     //Variable per a controlar l'acceleració màxima
     
     
   float topspeed;
   
   //Mètode per a moure el nostre objecte
   
   Mover()
   {
     
     //Inicialitzem els Vectors mencionats anteriorment
     
      location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0.001,0.01);
   
    
    topspeed = 3;
   }
   
   
   //Mètode per a actualitzar la posició del nostre objecte
   
   void update()
   {
     
     //Guardem en un Vector de forma regular la posició del nostre mouse.
     
     PVector mouse = new PVector(mouseX,mouseY);
     
     //Calculem la direcció del vector del mouse i el vector de l'localització del nostre objecte.
     
     PVector dir = PVector.sub(mouse,location);
     
     //Normalitzem el resultat i el multipliquem per tal d'obtenir un moviment unitari del nostre objecte cap a la posició del mouse.
     
     dir.normalize();
     dir.mult(0.1);
     acceleration = dir;
     
    
      
      velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
     
    
 
     
   }
   
   //Mètode per a mostrar el nostre objecte
   
   void display()
   {
     
      stroke(0);
      fill(175);
      ellipse(location.x, location.y, 60,60);
     
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
