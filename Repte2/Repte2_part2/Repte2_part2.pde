
//Vectors de localització i velocitat
PVector loc;
PVector speed;

//Mida de la nostra finestra
int width = 600;
int height= 600;

//Mida del radi del nostre objecte
 int xShape = 60;
 int yShape = 60;


void setup()
{
  
  surface.setSize(width,height);
  
  //Valors inicials als Vectors
  
  loc = new PVector (100, 100);
  speed = new PVector (5, 2.5);
  
  
}


void draw(){
  
  //Color per al fons de la finestra
  
    background(39, 143, 320);
  
  //La classe PVector ens permet utilitzat el mètode "add" per tal de realitzar un moviment
  
   loc.add(speed);
   
   //Condicionals per tal que el nostre objecte no surti de la pantalla, reboti i canvi de color
  
  if(loc.x + (xShape/2) > width || loc.x - (xShape/2) < 0)
  {
   
    speed.x = speed.x * -1;
     fill(color( random(255),random(255),random(255)));
    
  }
  
  if(loc.y + (yShape/2) > height || loc.y - (yShape/2) < 0)
  {
   
    speed.y = speed.y * -1;
     fill(color( random(255),random(255),random(255)));
    
  }
  
  
  
  ellipse(loc.x, loc.y, xShape, yShape);
  
  
}
