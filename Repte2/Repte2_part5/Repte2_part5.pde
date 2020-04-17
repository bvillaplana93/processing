
//Mida de la nostra finestra.

int width = 600;
int height = 600;

//Instanciem els nostres jugadors

  Character warrior = new Character();
  Character enemy = new Character();
  


 
  float d; //Variable que ens diu a quanta distància estan els nostres jugadors, un de l'altre.
  
  float coll; // //Variable per obtenir el nombre que ens dirà si els nostres jugadors han col·lisionat o no.
  



void setup()
{
  
 surface.setSize(width,height);
 
 //Posició dels nostres jugadors
 
 warrior.position(width, height);
 
 enemy.position(width+60, height);
 

 





 
}


void draw()
{
  //Obtenim de forma regular a quina distància estan els nostres jugadors
  
  d = dist(enemy.x,enemy.y,warrior.x,warrior.y);
  
  //Color de fons de la nostra finestra
  
  background(255);
  
  //En el cas que la vida de nostre Warrior sigui menor que 0 el farem desaparèixer de la pantalla
  
  if(warrior.lifeWarrior >0)
  {
     
  warrior.walk();
  warrior.displayWarrior("");
  } 
 
 //Si la vida de l'Enemy és 0, llavor el text del Warrior canviarà a WIN.
 
 if(enemy.lifeEnemy==0)
 {
   
    warrior.displayWarrior("WIN");
 
   
 }
 
  //Si la vida del Warrior és 0, llavor el text del Enemy canviarà a WIN.
 
  if(warrior.lifeWarrior<1)
 {
   
    enemy.displayEnemy("WIN");
  
   
 }
 


   //En el cas que la vida de nostre Enemey sigui menor que 0 el farem desaparèixer de la pantalla
    
  if(enemy.lifeEnemy >0)
  {
  enemy.walk();
  enemy.displayEnemy("");

  }
  
  //Si algun del dos jugador "moren" deixarem de dibuixar la línia que els uneix.
  
  if(enemy.lifeEnemy > 0 && warrior.lifeWarrior > 0)
  {
    line(warrior.x, warrior.y, enemy.x, enemy.y);
    
    
  }  else
  {
    
    
    
  }
  
 
  


//Si l'Enemy col·lideix amb el Warrior li restem una vida i fem que la posició del dos jugadors es renici.

coll = sqrt( (warrior.x - enemy.x)*(warrior.x - enemy.x) + (warrior.y - enemy.y)*(warrior.y - enemy.y));

if ( coll < 30 ) {
  
 
  warrior.lifeWarrior--;
  
  warrior.position(width, height);
 
 enemy.position(width+60, height);
  
}

//Si la distancia entre els dos jugadors, és major o igual a 100, restem una vida a l'Enemy i reiniciem la posició dels dos jugadors.

if(d>=100)
{
  
  enemy.lifeEnemy--;
  
   warrior.position(width, height);
 
 enemy.position(width+60, height);
  
}
 

  

  
}
