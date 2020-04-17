
//Mida de la finestra


  int width = 1200;
  int height = 600;
  
 
  

  //Comptador per tal de controlar en quin moment hi ha d'aparèixer cada element, núvols, pluja, efecte pluja i birds,
  
  int comptador = 0;
   

//Tot els elements d'aquest projecte, són tractats amb grup, per això s'hi han utilitzat arrays

  
  Storm [] storms = new Storm[300];
  
  Effect [] effect = new Effect[100];
  
  
  Clouds [] clouds = new Clouds[50];
  
  Walker [] birds = new Walker[30];



  



   
 //Al setup només fem que construir la finestra i fer un bucle per cascun dels objectes
  
  
  void setup()
  {
    surface.setSize(width,height);
    
   
    for(int i = 0; i<clouds.length; i++)
    {
      
      clouds[i] = new Clouds();
      
     
      
    }

   
   
 
    
    for(int i = 0; i<storms.length; i++)
    {
      
      storms[i] = new Storm();
      
     
      
    }
    
    for(int i = 0; i<effect.length; i++)
    {
      
      effect[i] = new Effect();
      
    
      
     
      
    }
    
   
     for(int i = 0; i<birds.length; i++)
    {
      
      birds[i] = new Walker();
      
     
      
    }
    
    
    
    
  }
  
  
  void draw()
  {
    
    comptador++;

    
    
    
     background(255,255,255);
     
     //Bucle per tal d'aplicar els mètodes corresponents als núvols
     
      for(int i = 0; i<clouds.length; i++)
    {
      clouds[i].show();
     clouds[i].move();
      
     
      
    }
     
     
     
     //Bucle per tal d'aplicar els mètodes corresponents al la pluja
     
     for(int i = 0; i<storms.length; i++)
     {
       
      storms[i].show();
      storms[i].fallWater();
      
      
     
     
      
    
      
      
      
      
     
       
     }
     
     //Bucle per tal d'aplicar els mètodes corresponents a l'efecte de la pluja
     
      for(int i = 0; i<effect.length; i++)
     {
       
       
     
       //Fins que el comptador no sigui major a 100 no es mostraran els elements
     
      if(comptador>100)
      {
       
      effect[i].effects();
      
      }
      
    
       //Bucle per tal d'aplicar els mètodes corresponents a l'efecte als birds
     
       
     }
     
     for(int i = 0; i<birds.length; i++)
     {
      //Fins que el comptador no sigui major a 150 no es mostraran els elements
       
       if(comptador>150)
      {
       
      birds[i].display();
      birds[i].walk();
      
      //Condicional per tal de controlar un canvi de color dels birds
      
      
     birds[i].checkEdges();
     
     if(mousePressed == true)
     {
     
     birds[i].update();
     
     } else
     {
       
       fill(255); 
       
     }
      
      
     
      }
      
    
      
      
      
      
     
       
     }
  
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
