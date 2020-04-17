  
  //Variables d'amplada i altura per a definir la mida de la nostra finestra.

 int width = 600;
 int height = 600;
 
 //Variable per a treballar amb imatges.
 
 PImage img;


void setup()
{
  
  //Creem la finestra amb les mides corresponents.
  
  surface.setSize(width,height);
  
   
   //Carregem a la variable img la imatge corresponent.
   
  img = loadImage("floorMarioBros.png");
  
  
}



void draw()
{
    
 
  //Amb un bucle aniuat recorrem tota la nostra finestra i afegim la nostra imatge.
  
  for(int y = 0; y<=height; y+=40)
  {
    
    
    for(int x = 0; x<=width; x+=40)
    {
      
   
  //Amb resize podem modificar la mida de la nostra imatge.
  
      img.resize(50, 50);
      
  //Inserim la imatge en les següents coordenades:
  //*coordenades que van canviant segons avança el bucle.
  
      image(img,y,x); 
      
    }
     }
    
    
    
 
  
  
  
  
  
}
