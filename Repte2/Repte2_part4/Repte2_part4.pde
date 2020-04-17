
//Vectors per a guardar la posició del centre la pantalla i la posició del mouse.

PVector mouse;
PVector center;

//Mida de la nostra finestra.

int width = 600;
int height= 600;


void setup()
{
  
   surface.setSize(width,height);
  
  
}


void draw()
{
  
  background(255);
  
  //Guardem la posició del centre la pantalla i la posició del mouse.
 
  mouse = new PVector(mouseX, mouseY);
  center = new PVector(width/2, height/2);
  
  //Amb el mètode "normalize" fem que valor sigui unitari, però amb això tenim un problema que sempre valdrà 1, 
  //per tal hem de realitzar una multiplicació per tal d'augmentar el valor. D'aquesta manera la nostra línia sempre té la mateixa mida,
  
  
  mouse.sub(center).normalize();
 

     mouse.mult(120);
  
  
  
  translate(width/2, height/2);
  
  line(0,0,mouse.x, mouse.y);
  
textSize(32);
fill(0, 102, 153);

//Amb el mètode "mag" calculem la magnitud.

text("mg: "+mouse.mag(), 10, 30);


  
  
  
}
