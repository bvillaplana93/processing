//Treballem en herència per tal de crear un major moviment en els objectes que s'interpreten com a "birds"
//Fem ús d'altra classe vista en classe(Walker), però aquesta ha sigut modificada
class Walker extends Mover
{
  
  //En aquesta classe també treballem amb l'element "noise" per tal que quan els "birds" segueixen al mouse, tinguin un efecte especial.
 
     float time = 0.0;
    float increment = 0.2;
    
    //Constructor
    
    Walker()
    {
    }
    
    //És el mateix mètode que el de la classe Walker vist a classe però he modificat el valor de la suma perquè sigui un moviment una mica més erràtic.
    
    void walk()
    {
      
      //Si l'usuari prem algun botó del mouse, els elements canvien de color i apliquen "noise", en canvi, si no és així, apliquen el moviment del mètode walk.
     
       int choice = int(random(4));
       
       if(choice == 0)
        {
         
          location.x=location.x + 3 ;
          
        } else if (choice == 1)
        {
          
          location.x=location.x - 3 ;
          
        }else if (choice == 2)
        {
          
          location.y=location.y + 3 ;
          
        } else {
          
        location.y=location.y - 3 ;
          
        }
      
    }
    
    //Mètode per a mostrar els objectes
    
      void display()
      {
        
         
         
           stroke(0);
           
           float n = noise(time)*width;
 
         time+= increment;
        
          if(mousePressed == true)
     {
     
     ellipse(location.x + 10 ,location.y + 10 , n/50,n/50);
     
     } else{
       
        ellipse(location.x + 10 ,location.y + 10 , 15,15);
       
     }
        
      }
    
    
    
  
}
