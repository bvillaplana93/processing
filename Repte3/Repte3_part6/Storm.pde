//Classe per tal de simular la pluja
class Storm
{
  
//Vector per a la localització del nostre efecte.
 
 PVector location = new PVector(random(width),height-500);
  
//Velocitat i separació a la qual han d'estar els elements entre si, per tal de simular el que seria la pluja s'ha realitzat la inicialització de les variables amb valors random.

  float speed = random(6,12);
  float sep = random(10,30);
  
  
  
  
  void fallWater()
  {
    
    //Canviem el valor de Y per tal que el moviment sigui en vertical, de dalt cap avall.
    
     location.y = location.y + speed;
     
     //Fem que no deixi de caure aigua en cap moment, en la següent posició
     
     if(location.y > height)
     {
       
      location.y = height-500;
  
     
       
     }
    
  }
  
  
  //Mètode per tal de mostrar els nostres elements.
  
  void show()
  {
    
     stroke(0,191,255);
     
     line(location.x,location.y,location.x,location.y+sep);
    
    
    
  }
  

 

  
  
}
