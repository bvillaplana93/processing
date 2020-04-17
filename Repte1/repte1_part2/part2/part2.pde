
  //Variables d'amplada i altura per a definir la mida de la nostra finestra.

 int width = 600;
 int height = 600;
 



void setup()
{
  
  //Creem la finestra amb les mides corresponents.
  
  surface.setSize(width,height);
  
 
}




void draw()
{
     

  
  //Amb un bucle aniuat recorrem tota la nostra finestra i afegim en aquest cas un objecte quadrat i cada quadrat d'un color amb la funciona random.
  
  for(int y = 0; y<=height; y+=10)
  {
  
    
    for(int x = 0; x<=width; x+=10)
    {   
          
    fill(color( random(255),random(255),random(255)));
    square(x, y, 10);
    stop();
    
     
      
    }
     }
    
    
    
 
  
  
  
  
  
}
