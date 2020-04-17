

//Mida de la nostra finestra


  int width = 600;
  int height = 600;
  
  //Inicialitzem un array del nostre objecte, per tal de poder crear moltes instàncies
  
  Mover [] mover = new Mover[60];



void setup()
{
  
    surface.setSize(width,height);
  background(255, 255, 255);
  
  //Recorrem l'array per generar totes les instàncies
  
    for(int i = 0; i<mover.length; i++)
  
  {
     mover[i] = new Mover();
    
    
  }
    
    
}



void draw()
{
  
  background(255, 255, 255);
  
  //Per cada objecte instanciat cridem al seu mètode corresponent
  
  for(int i = 0; i<mover.length; i++)
  
  {
      mover[i].display();
  
    mover[i].update();
  
    mover[i].checkEdges();
    
    
  }
  

  
  
}
