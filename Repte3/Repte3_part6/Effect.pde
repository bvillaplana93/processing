//A la classe Effecte s'ha fet ús d'un element no vist a classe, anomenat "noise" l'he utilitzat per a simular les gotes de pluja quan toquen el terra.
class Effect
{
  
//Variables per a controlar l'efecte, com més gran siguin els valors més caòtic serà el resultat.
  
float time = 0.0;
float increment = 0.1;


//Vector per a la localització del nostre efecte.

PVector location = new PVector(random(width),height);

//Constructor

Effect(){}



//Mètode per a aplicar l'efecte i mostrar els elements

void effects()
{
  

 float n = noise(time)*width;
 
 time+= increment;
 fill(0,191,255);

 ellipse(location.x, location.y,n/50,n/50);
  
  
}
  
}
