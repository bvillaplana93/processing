//Classe per a crear núvols
class Clouds
{
  
  //Variables per a la posició
  
  float x =random(0,500);
  float y= random(40, 100);
  
  //Variable de velocitat de moviment
  
  
  float xSpeed = 1;
  
  //Variable per tal que hi hagi una separació entre els objectes
  
  
   float sep =1000;
   

  //Constructor
  
   Clouds()
   {
    super(); 
     
   }
   
   
   //Mètode per al moviment dels objectes
   
    void move()
    {
      
      //Condicional que controla fins a quin punt els nostres objectes s'han de moure i pintar entre uns valors randoms (per simular el comportament d'uns núvols).
      
    if(x<width/2)
    {
      
       x = x + random(0,2); 
       sep++;
       
       fill(random(90,100));
       
       
    } else {
      
      fill(random(90,100));
      
    }
    
   

        
    }
  
  
  //Mètode per a mostrar els nostres objectes
  
  
  void show()
  {
    
    
     
    ellipse(x, y, x + sep, y );
    
    
    
  }
  
  
  
  
  
  
  
  
  
}
