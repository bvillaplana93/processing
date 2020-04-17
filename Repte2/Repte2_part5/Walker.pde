//Classe Walker que utilitzarem per al moviment dels nostres elements

class Walker
{
 
    int x;
    int y;
    
    
    Walker(){
      
    }
    
    Walker(int width, int height)
    {
        
      x = width/2;
      y = height/2;
       
      
    }
    
   
    
    
    
    void walk()
    {
      
       int choice = int(random(4));
       
       if(choice == 0)
        {
         
          x++;
          
        } else if (choice == 1)
        {
          
          x--;
          
        }else if (choice == 2)
        {
          
          y++;
          
        } else {
          
         y--;
          
        }
      
    }
    
      void display()
      {
        
         stroke(0);
         point(x,y);
         
        
      }
    
    
    
  
}
