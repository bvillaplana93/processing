//Classe Character que s'estén de la classe Walker per tal d'implantar el seu moviment

class Character extends Walker
{
  
  //Vides dels jugadors
  
  private int lifeWarrior = 5;
  private int lifeEnemy = 3;
  
  //Radi de cada jugador
  
  int rdWarrior = 30;
  int rdEnemy = 30;
  
  //Booleans que utilitzarem per a controlar el text dels jugadors.
  
  boolean boolEnemy = true;
  boolean boolWarrior = true;
  
  //Constructor
  
  Character()
  {
   
    super();
    
  }
  
  //Mètode que indica la posició dels nostres jugadors
  
   void position(int posX, int posY)
    {
      
       x = posX/2;
       y = posY/2;
      
    }
    
    //Mètode que dibuixa en l''escena el jugador Warrior
    
    void displayWarrior(String result)
    {
      fill(0,128,0);    
      circle(x, y, rdWarrior);
      textSize(20); 
      
       if(result.length()>1)
      {
        text(lifeWarrior +" "+result, x+15, y); 
        boolWarrior = false;
        
      
      
      } 
      
      
      if(boolWarrior==true) 
      {
        
        text(lifeWarrior +" Warrior ", x+15, y); 
        
      }
       
      
    }
    
    
   //Mètode que dibuixa en l''escena el jugador Enemy
    
    void displayEnemy(String result2)
    {
      
      fill(255,0,0);     
      circle(x, y, rdEnemy);
      textSize(20); 
      
      if(result2.length()>1)
      {
        text(lifeEnemy +" " +result2 +" dist: "+nfc(d,2), x+15, y); 
        boolEnemy = false;
        
      
      
      } 
      
      
      if(boolEnemy==true) 
      {
        
        text(lifeEnemy +" Enemy, dist: "+nfc(d,2), x+15, y); 
        
      }
      
      
    }
    
    
 
   
  
  
}
