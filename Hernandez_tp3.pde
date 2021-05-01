//Hernández, María Aldana

//Config
void setup() 
{
  //Cursor configurado en flecha
  cursor(ARROW);
  //Config del tamaño en 800 de ancho x 800 de alto
  size(800,800);
  //Fondo config en negro opaco
  background(0);
}

//Variables globales 
float pincel, color_pincel, tamanio;

//Inicio draw()
void draw()
{
  //Tamaño de texto en 20px
  textSize(20);
  //Color de relleno de texto VERDE AZULADO
  fill(0, 150, 150);
  //Texto Parametros 1: Contenido 2: Posicion de inicio en X 3: Posicion de inicio en Y
  text("Progama de Dibujo", 300, 30); 
  
  //Tamaño de texto en 16px
  textSize(16);
  //Relleno de texto en BLANCO OPACO
  fill(255);
  //Texto parametros 1: Contenido 2: Posicion de inicio en X 3: Posicion de inicio en Y
  text("Pincel", 110, 70);
            //Dibujo en pantalla el modelo de PINCELES
            //Todos con un color de relleno gris translucido y un borde opaco negro
            //Pincel 1 CD BRUSH
            for (int i = 0; i <= 6; i += 2)
                  {
                    fill(150, 40);
                    stroke(0);
                    ellipse(50 - i+i, 100 - i+i, i*i, i*i);
                  }//Fin del bloque de codigo a ejecutar del for
                  
            //Pincel 2 CUADRADO SOBRE CUADRADO
            for (int i = 2; i <= 4; i += 2)
                  {
                    fill(150, 40);
                    stroke(0);
                    rect(80 + i*5, 100 - i*5, 25, 25);
                  }//Fin del bloque de codigo a ejecutar del for
                  
            //Pincel 3 TRIANGULO
             fill(150, 40);
             stroke(0);
            {triangle(160 - 20 , 95 + 15 , 160, 95 - 10 , 160 + 20, 95 + 15);}
            
            //Pincel 4 ELIPSE SOBRE ELIPSE
            for (int i = 2; i <= 4; i += 2)
                  {
                    fill(150, 40);
                    stroke(0);
                    ellipse(200 + i*5, 110 - i*5, 25, 25);
                  }//Fin del bloque de codigo del for
                  
  //Titulo 'Tamaño' con color de relleno blanco opaco ubicado en x300 e y70     
  fill(255);
  //Texto parametros 1: Contenido 2: Posicion de inicio en X 3: Posicion de inicio en Y
  text("Tamaño", 300, 70);
  //Se dibujaran circulos con diferentes radios para describir los tamaños de pincel
  //Tendran borde grosor 1 y color blanco opaco con color de relleno negro opaco
            //Tamaño 1
            strokeWeight(1);
            stroke(255);
            fill(0);
            circle(300, 100, 10);
            
            //Tamaño 2
            circle(320, 100, 12);
            
            //Tamaño 3
            circle(340, 100, 14);
            
            //Tamaño 4
            circle(363, 100, 16);
  
  //Titulo 'Color' con color de relleno blanco opaco ubicado en x410 e y70
  fill(255);
  //Texto parametros 1: Contenido 2: Posicion de inicio en X 3: Posicion de inicio en Y
  text("Color", 410, 70);
  /* Los colores se visualizaran en circulos del mismo radio pero con color de
  relleno segun sea el caso, todos los colores opacos y con borde negro opaco */
            //Rojo
            stroke(0);
            fill(255, 0, 0);
            circle(410, 90, 10);
            
            //Amarillo
            fill(255, 255, 000);
            circle(430, 90, 10);
            
            //Azul
            fill(0, 0, 255);
            circle(450, 90, 10);
            
            //Verde
            fill(0, 255, 0);
            circle(410, 110, 10);
            
            //Violeta
            fill(155, 0, 255);
            circle(430, 110, 10);
            
            //Naranja
            fill(255, 117, 020);
            circle(450, 110, 10);
            
  //Titulo 'Borrar' con color de relleno blanco opaco ubicado en x600 e y70          
  fill(255);
  //Texto parametros 1: Contenido 2: Posicion de inicio en X 3: Posicion de inicio en Y
  text("Borrar", 600, 70);
  /* Se visualizaran circulos de distinto radio con borde blanco opaco y
  color de relleno negro para describir el tamaño de la GOMA DE BORRAR */
  
            //Tamaño 1
            stroke(255);
            fill(0);
            circle(530, 100, 10);
            
            //Tamaño 2
            stroke(255);
            fill(0);
            circle(560, 100, 20);
            
            //Tamaño 3
            stroke(255);
            fill(0);
            circle(600, 100, 30);
            
            //Tamaño 4
            stroke(255);
            fill(0);
            circle(650, 100, 40);
            
            //Tamaño 5
            stroke(255);
            fill(0);
            circle(720, 100, 60);
  
  /* DIBUJO CANVAS
  con borde de color verde azulado, grosor de borde 4, relleno del
  canvas negro translucido, para dibujar directamente sobre el FONDO de pantalla,
  el canvas es de tamaño 779x520 y comienza en 10 de x y 140 de y
  */
  stroke(0,150,150);
  strokeWeight(4);
  fill(0,0);
  rect(10, 140, 779, 520);
  
  //Limitando en que parte de la pantalla se puede pintar y donde no se puede pintar
  if ((mouseX > 10) && (mouseY > 145) && (mouseX < 790) && (mouseY < 660)) 
  {
   //Si mantenemos apretado algun boton del mouse
    if (mousePressed == true)
       {
          //Si mantenemos apretado el boton IZQUIERDO del mouse
          if(mouseButton == LEFT)
            {
              //El pincel por default tiene color gris translúcido
              fill(150, 50);
              /*Configuro el borde en grosor 1 para los 4 pinceles siguientes,
              ya que sino arrastraria el grosor de borde 4 del canvas */
              strokeWeight(1); 
              
              //ROJO
              if(color_pincel == 1) 
              {
                fill(255, 0, 0, 50);  
                stroke(255,0,0);
              }
              //AMARILLO
              else if (color_pincel == 2) 
              {
                 fill(255, 255, 0, 50);  
                 stroke(255, 255,0);
              }
              //AZUL
              else if (color_pincel == 3) 
              {
                fill(0, 0, 255, 50);  
                stroke(0, 0, 255);
              }
              //VERDE
              else if (color_pincel == 4) 
              {
                fill(0, 255, 0, 50);  
                stroke(0, 255, 0);
              }
              //VIOLETA
              else if (color_pincel == 5) 
              {
                fill(155, 0, 255, 50);  
                stroke(155, 0, 255);
              }
              //NARANJA
              else if (color_pincel == 6) 
              {
                fill(255, 117, 020, 50);  
                stroke(255, 117, 020);
              }
              //NEGRO GOMA DE BORRAR
              else if (color_pincel == 1.1)
              {
                fill(0);
                stroke(0);
              }
              //Color por default
              else if (color_pincel == 0)
              {
                //Rellenar la figura con un gris transparente
                fill(150, 50);
                //Borde Negro Opaco de grosor 1
                stroke(0);
                strokeWeight(1);
              }
              
            }//Fin if mouse LEFT    
          //Si apretamos el boton derecho borramos (se pinta la figura de negro)
          else if (mouseButton == RIGHT) 
            {
              fill(0); 
              stroke(0);
            }//Fin if mouse RIGHT
          
          //Si no apretamos ningun boton no pintamos ni relleno ni borde
          //else del primer i
          else
          {
            noFill(); 
            noStroke();
          }
          
//PINCELES
//Pincel 1 con 4 tamaños, el tamaño 3 viene por deafault

              if (pincel == 1)
              {
                  if (tamanio ==1)
                {
                  for (int i = 0; i <= 2; i += 2)
                  {
                    ellipse(mouseX - i+i, mouseY - i+i, i*i, i*i);
                  }
                }
                
                else if (tamanio ==2)
                {
                  for (int i = 0; i <= 4; i += 2)
                  {
                    ellipse(mouseX - i+i, mouseY - i+i, i*i, i*i);
                  }
                }
                //Tamaño por default
                else if (tamanio ==3)
                {
                  for (int i = 0; i <= 6; i += 2)
                  {
                    ellipse(mouseX - i+i, mouseY - i+i, i*i, i*i);
                  }
                }
                else if (tamanio ==4)
                {
                  for (int i = 0; i <= 8; i += 2)
                  {
                    ellipse(mouseX - i+i, mouseY - i+i, i*i, i*i);
                  }
                }
                
              }
//Pincel 2 con 4 tamaños, el tamaño 3 viene por deafault              
              else if (pincel == 2)
              {
                if (tamanio == 1)
                {
                  for (int i = 2; i <= 4; i += 2)
                  {
                    rect(mouseX + i*5, mouseY - i*5, 10, 10);
                  }//Fin del bloque de codigo a ejecutar del for
                }
                
                else if (tamanio == 2)
                {
                  for (int i = 2; i <= 4; i += 2)
                  {
                    rect(mouseX + i*5, mouseY - i*5, 20, 20);
                  }//Fin del bloque de codigo a ejecutar del for
                }
                //Tamaño por default
                else if (tamanio == 3)
                {
                  for (int i = 2; i <= 4; i += 2)
                  {
                    rect(mouseX + i*5, mouseY - i*5, 30, 30);
                  }//Fin del bloque de codigo a ejecutar del for
                }
                else if (tamanio == 4)
                {
                  for (int i = 2; i <= 4; i += 2)
                  {
                    rect(mouseX + i*5, mouseY - i*5, 40, 40);
                  }//Fin del bloque de codigo a ejecutar del for
                }
 
              }
//Pincel 3 con 4 tamaños, el tamaño 3 viene por deafault            
              else if (pincel == 3)
              {
                if (tamanio == 1)
                {
                  triangle(mouseX - 10 , mouseY + 5 , mouseX, mouseY - 5 , mouseX + 10, mouseY + 10);
                }
                
                else if (tamanio == 2)
                {
                  triangle(mouseX - 15 , mouseY + 10 , mouseX, mouseY - 5 , mouseX + 15, mouseY + 10);
                }
                //Tamaño por default
                else if (tamanio == 3)
                {
                  triangle(mouseX - 20 , mouseY + 15 , mouseX, mouseY - 10 , mouseX + 20, mouseY + 15);
                }
                else if (tamanio == 4)
                {
                  triangle(mouseX - 25 , mouseY + 20 , mouseX, mouseY - 15 , mouseX + 25, mouseY + 20);
                }
//Pincel 4 con 4 tamaños, el tamaño 3 viene por deafault                
              }             
              else if (pincel == 4)
              {
                if (tamanio ==1)
                {
                  for (int i = 2; i <= 4; i += 2)
                    {
                      ellipse(mouseX + i*5, mouseY - i*5, 10, 10);
                    }//Fin del bloque de codigo del for
                }
                
                else if (tamanio ==2)
                {
                  for (int i = 2; i <= 4; i += 2)
                    {
                      ellipse(mouseX + i*5, mouseY - i*5, 20, 20);
                    }//Fin del bloque de codigo del for
                }
                //Tamaño por default
                else if (tamanio ==3)
                {
                  for (int i = 2; i <= 4; i += 2)
                    {
                      ellipse(mouseX + i*5, mouseY - i*5, 30, 30);
                    }//Fin del bloque de codigo del for
                }
                else if (tamanio ==4)
                {
                  for (int i = 2; i <= 4; i += 2)
                    {
                      ellipse(mouseX + i*5, mouseY - i*5, 40, 40);
                    }//Fin del bloque de codigo del for
                }
//Pinceles para la GOMA DE BORRAR                
              }
              else if (pincel == 1.1)
              {
                noStroke();
                circle(mouseX, mouseY, 10);
              }
              
              else if (pincel == 1.2)
              {
                noStroke();
                circle(mouseX, mouseY, 20);
              }
              
              else if (pincel == 1.3)
              {
                noStroke();
                circle(mouseX, mouseY, 30);
              }
              
              else if (pincel == 1.4)
              {
                noStroke();
                circle(mouseX, mouseY, 40);
              }
              
              else if (pincel == 1.5)
              {
                noStroke();
                circle(mouseX, mouseY, 60);
              }
              
              else
              {
                noStroke();
                circle(mouseX, mouseY,20);
              }
         
       }//Fin if mousePressed
       
  }//Fin if que limita el canvas
 
}//Fin draw()

//callback atenta a sí hago click en determinado lugar de la pantalla

void mousePressed()
{
//PINCELES

  //Coordenadas de Pincel 1
  if((mouseX > 44) && (mouseX < 56) && (mouseY > 94) && (mouseY < 106))
  {
   pincel = 1;
   tamanio = 3;
   color_pincel = 0;
  }//Fin condicional
  
  //Coordenadas de Pincel 2
  if((mouseX > 90) && (mouseX < 125) && (mouseY > 90) && (mouseY < 110))
  {
   pincel = 2;
   tamanio = 3;
   color_pincel = 0;
  }//Fin condicional
  
  //Coordenadas de Pincel 3
  if((mouseX > 140) && (mouseX < 180) && (mouseY > 85) && (mouseY < 105))
  {
   pincel = 3;
   tamanio = 3;
   color_pincel = 0;
  }//Fin condicional
  
  //Coordenadas de Pincel 4
  
  if((mouseX > 200) && (mouseX < 230) & (mouseY > 80) && (mouseY < 110))
  {
   pincel = 4;
   tamanio = 3;
   color_pincel = 0;
  }//Fin condicional
  
//TAMAÑOS

  //Coordenadas de Tamaño 1
  if((mouseX > 295) && (mouseX < 305) && (mouseY > 95) && (mouseY < 105))
  {
   tamanio = 1;
  }//Fin condicional
  
  //Coordenadas de Tamaño 2
  if((mouseX > 314) && (mouseX < 326) && (mouseY > 94) && (mouseY < 106))
  {
    tamanio = 2;
  }//Fin condicional
  
  //Coordenadas de Tamaño 3
  if((mouseX > 333) && (mouseX < 347) && (mouseY > 93) && (mouseY < 107))
  {
    tamanio = 3;
  }//Fin condicional
  
  //Coordenadas de Tamaño 4
  if((mouseX > 355) && (mouseX < 371) && (mouseY > 92) && (mouseY < 108))
  {
    tamanio = 4;
  }//Fin condicional

//COLORES

  //Coordenadas de color ROJO
  if((mouseX > 405) && (mouseX < 415) && (mouseY > 85) && (mouseY < 95))
  {
    color_pincel = 1;
  }//Fin condicional de color Rojo
  
  //Coordenadas de color AMARILLO
  if((mouseX > 425) && (mouseX < 435) && (mouseY > 85) && (mouseY < 95))
  {
    color_pincel = 2;
  }
  
  //Coordenadas de color AZUL
  if((mouseX > 445) && (mouseX < 455) && (mouseY > 85) && (mouseY < 95))
  {
    color_pincel = 3;
  }
  
  //Coordenadas de color VERDE
  if((mouseX > 405) && (mouseX < 415) && (mouseY > 105) && (mouseY < 115))
  {
    color_pincel =4;
  }
  
  //Coordenadas de color VIOLETA
  if((mouseX > 425) && (mouseX < 435) && (mouseY > 105) && (mouseY < 115))
  {
    color_pincel = 5;
  }
  
  //Coordenadas de color NARANJA
  if((mouseX > 445) && (mouseX < 455) && (mouseY > 105) && (mouseY < 115))
  {
    color_pincel = 6;
  }
  //Coordenadas de color NEGRO
  if((mouseX > 525) && (mouseX < 535) && (mouseY > 95) && (mouseY < 105))
  {
    color_pincel = 1.1;
  }
  
//GOMA DE BORRAR 
  
  //Coordenadas Goma de Borrar 1
  if((mouseX > 525) && (mouseX < 535) && (mouseY > 95) && (mouseY < 105))
  {
    pincel = 1.1;
    color_pincel = 1.1;
  }
  
  //Coordenadas Goma de Borrar 2
  if((mouseX > 550) && (mouseX < 570) && (mouseY > 90) && (mouseY < 110))
  {
    pincel = 1.2;
    color_pincel = 1.1;
  }
  
  //Coordenadas Goma de Borrar 3
  if((mouseX > 585) && (mouseX < 615) && (mouseY > 85) && (mouseY < 115))
  {
    pincel = 1.3;
    color_pincel = 1.1;
  }
  
  //Coordenadas Goma de Borrar 4
  if((mouseX > 630) && (mouseX < 670) && (mouseY > 80) && (mouseY < 120))
  {
    pincel = 1.4;
    color_pincel = 1.1;
  }
  
  //Coordenadas Goma de Borrar 5
  if((mouseX > 690) && (mouseX < 750) && (mouseY > 70) && (mouseY < 130))
  {
    pincel = 1.5;
    color_pincel = 1.1;
  }
  
   
}//Fin callback}

//CALLBACK

/*Para cambiar el mouse de flecha a mano cuando pase sobre alguna opción de 
PINCEL, TAMAÑO, COLOR O GOMA DE BORRAR
*/

void mouseMoved()
{
  //PINCELES
  if((mouseX > 32) && (mouseX < 68) && (mouseY > 82) && (mouseY < 118)){cursor(HAND);}
  else if((mouseX > 90) && (mouseX < 125) && (mouseY > 80) && (mouseY < 115)){cursor(HAND);}
  else if((mouseX > 140) && (mouseX < 180) && (mouseY > 85) && (mouseY < 105)){cursor(HAND);}
  else if((mouseX > 200) && (mouseX < 230) & (mouseY > 80) && (mouseY < 110)){cursor(HAND);}
     
  //TAMAÑOS
  else if((mouseX > 295) && (mouseX < 305) && (mouseY > 95) && (mouseY < 105)){cursor(HAND);}
  else if((mouseX > 314) && (mouseX < 326) && (mouseY > 94) && (mouseY < 106)){cursor(HAND);}
  else if((mouseX > 333) && (mouseX < 347) && (mouseY > 93) && (mouseY < 107)){cursor(HAND);}
  else if((mouseX > 355) && (mouseX < 371) && (mouseY > 92) && (mouseY < 108)){cursor(HAND);}
  
  //COLORES
  else if((mouseX > 405) && (mouseX < 415) && (mouseY > 85) && (mouseY < 95)){cursor(HAND);}
  else if((mouseX > 425) && (mouseX < 435) && (mouseY > 85) && (mouseY < 95)){cursor(HAND);}
  else if((mouseX > 445) && (mouseX < 455) && (mouseY > 85) && (mouseY < 95)){cursor(HAND);}
  else if((mouseX > 405) && (mouseX < 415) && (mouseY > 105) && (mouseY < 115)){cursor(HAND);}
  else if((mouseX > 425) && (mouseX < 435) && (mouseY > 105) && (mouseY < 115)){cursor(HAND);}
  else if((mouseX > 445) && (mouseX < 455) && (mouseY > 105) && (mouseY < 115)){cursor(HAND);}
  
  //GOMAS DE BORRAR
  else if((mouseX > 525) && (mouseX < 535) && (mouseY > 95) && (mouseY < 105)){cursor(HAND);}
  else if((mouseX > 550) && (mouseX < 570) && (mouseY > 90) && (mouseY < 110)){cursor(HAND);}
  else if((mouseX > 585) && (mouseX < 615) && (mouseY > 85) && (mouseY < 115)){cursor(HAND);}
  else if((mouseX > 630) && (mouseX < 670) && (mouseY > 80) && (mouseY < 120)){cursor(HAND);}
  else if((mouseX > 690) && (mouseX < 750) && (mouseY > 70) && (mouseY < 130)){cursor(HAND);}
  else{cursor(ARROW);}
}
