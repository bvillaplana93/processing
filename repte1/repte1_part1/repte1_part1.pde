//*En aquest codi hi ha més comentaris dels habituals, ja que és la primera practica.  
  
  //Com en tots els llenguatges de programació que hem treballat fins ara definirem les variables a la part superior.
  //Ressaltar que estem treballant en Processing amb llenguatge Java.

  //Variables d'amplada i altura per a definir la mida de la nostra finestra.

 int width = 600;
 int height = 600;
 
 
 //Variables per a la mida del triangle.
 
 int x1;
 int y1;
 int x2;
 int y2;
 int x3;
 int y3;
 
 //Variables per al moviment d'un dels objectes.
 
float xObjectFollowMouse;
float yObjectFollowMouse;
float speed; 


//Aquesta funció equival al void start que ja hem utilitzat a Unity.

void setup()
{
  
  //Velocitat a la qual un dels objectes es mourà cap al punter.
  
  speed=0.10;
  
  //Crear una finestra de mida 600x600 (primer s'indica l'amplada i després l'altura).
  
  surface.setSize(width,height);
  
    
  //Càlcul de la mida del triangle per tal que sempre sigui relativa.
  
  x1=width/2;       
  y1=(height/2)-30; 
  x2=(width/2)+30;  
  y2=(height/2)+30;  
  x3=(width/2)-30;  
  y3=(height/2)+30; 
  
  
  
}


//Aquesta funció equival al void update que ja hem utilitzat a Unity

void draw()
{
     //Amb la funció background podem definir el color de fons amb RGB. Hem definit el background en el void draw, ja que així quan es mogui algun objecte no deixarà un rastre.
 
  background(114, 192, 219);
  
  
  //Cercle amb un contorn de 2 i amb color vermell. 
  //Aquest objecte és el que és moure cap al cursor del mouse.
  
  strokeWeight(2); //Control de l'objecte
  fill(233,44,28);  //Color RGB de l'objecte
  circle(xObjectFollowMouse, yObjectFollowMouse, 55); 
 
   //Quadrat 
  strokeWeight(5);
  fill(91,192,17);
  square(width-80, 15, 50);
  
  //Triangle
  strokeWeight(8);
  fill(17,36,231);
  triangle(x1, y1, x2, y2, x3, y3);
  
  
  
  //Aquí fem el càlcul del moviment del cercle cap al cursor del mouse.
  
  float xMouse = mouseX; //Coordenada X del mouse.
  float dx = xMouse - xObjectFollowMouse; //Distancia entre la coordenada X del mouse i la coordenada X de l'objecte.
  xObjectFollowMouse += dx * speed; //Movem l'objecte cap al cursor amb una velocitat estàtica.
  
  float yMouse = mouseY;
  float dy = yMouse - yObjectFollowMouse;
  yObjectFollowMouse += dy * speed;
  
  
  
  
  
  
  
  
}
