
  //Variables d'amplada i altura per a definir la mida de la nostra finestra.
  
  int width = 600;
  int height = 600;
  
  //Variables per a calcular quina seria la meitat de la pantalla.
  
  float xPosInitial;
  float yPosInitial;
  
  //Variables per a calcular la velocitat a la qual es mou el nostre objecte
  
  float xSpeed = 2;  
  float ySpeed = 5;  
  
  //Variables per a definir la mida del nostre objecte.
  
  float xShape;
  float yShape;
  
  void setup() 
  {
    
     
    ////Creem la finestra amb les mides corresponents.
    
    surface.setSize(width, height);
    
    
    //Càlcul per a obtenir la posició de la meitat de la pantalla.
    
    xPosInitial = width/2;
    yPosInitial = height/2;
    
   
    
   
    //Definim la mida del nostre objecte.
    
    xShape = 60;
    yShape = 60;
  
    
    
  }
  
  void draw() 
  {
    
    
    
     //Amb la funció background podem definir el color de fons amb RGB. Hem definit el background en el void draw, ja que així quan es mogui algun objecte no deixarà un rastre.
    
    background(197, 201, 238);     
      
       
       //Condicionals per tal que el moviment del nostre objecte no surti de la nostra finestra.
       //També es té en compte la mida de l'objecte per tal que reboti quan ha col·lisionat algun dels extrems i no la part central.
       //  //Utilitzem la funció random per tal que canvi de color cada cop que col·lisioni.
       
       if ((xPosInitial+(xShape/2) > width) || (xPosInitial-(xShape/2) < 0) ) 
       {
         
         xSpeed = xSpeed * -1;        
         
          fill(color( random(255),random(255),random(255)));
          
      }
      
    
      
      if ((yPosInitial+(xShape/2) > height) || (yPosInitial-(xShape/2) < 0)) 
      {
     
       ySpeed = ySpeed * -1;      
       
        fill(color( random(255),random(255),random(255)));
        
    }
    
        //Definim el nostre objecte les posicions calculades i la seva mida prèviament també definida.
           
           ellipse(xPosInitial, yPosInitial, xShape, yShape);
           
           //Amb la funció translate apliquem el moviment al nostre objecte.
       
        translate(xPosInitial+=xSpeed, yPosInitial+=ySpeed);
    
  }
