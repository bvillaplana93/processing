//Mida de la nostra finestra

  int width = 600;
  int height = 600;
  
  //Inicialitzem el nostre objecte
  
  Mover mover = new Mover();



void setup()
{
  
    surface.setSize(width,height);
}



void draw()
{
  
  background(255, 255, 255);
  
  //Apliquem els mètodes corresponents explicats en la classe Mover.
  
  mover.display();
  
  mover.update();
  
  mover.checkEdges();
  
  
}
