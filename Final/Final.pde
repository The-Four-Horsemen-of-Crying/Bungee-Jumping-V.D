//DECLARACIONES IMPORT

//Variables 
//IMAGENES PARA LAS ESCENAS 
PImage imagenFondo, datos, escena;
PImage escena1[] = new PImage [3];
PImage muertes[] = new PImage [8];
int num_muerte;
PImage miniatura, miniatura2;
PImage miniaturas [] = new PImage [3];
PImage enterx [] = new PImage[100];
PImage pj, pj_cayendo[]= new PImage [2];
int Num_perso;
PImage botonInicio;
PImage botonHome; 
PImage botonSalir; 
PImage enter, invisible;
PImage change, left, right, jump;
//IMAGENES PARA LAS ESCENAS 



//Algunas temporales para el control del raton y de las pantallas 
float posx1, posy1, posx2, posy2; 
int tempAncho, tempLargo;
int caso=0, i=0;
int numero = 1, can;
int movemen=0;
//Algunas temporales para el control del raton y de las pantallas 


//VARIABLES DE ENTRADA PARA LOS DATOS DE LA SIMULACION 
int peso = 70; 
int altura = 50;
int cuerda= 10;
int resistenciaDouble = 15;

//Cambio de variables para trabajar con los cálculos 
double pesoDouble=peso;
double alturaDouble=altura; 
double cuerdaDouble=cuerda; 
double resistenciaDouble1=resistenciaDouble;
//VARIABLES DE ENTRADA PARA LOS DATOS DE LA SIMULACION 



//VARIABLES PARA EL AJUSTE DE LA PANTALLA DE ACUERDO A LOS DATOS
float porcentajePantalla;
float pixelesCaida; //aceleracion de la gravedad
float tiempoCaidaLibre;
float alturaEdificioPixeles;
float alturaplataforma_pixeles;
float anchoedificio;
float metros;
float tiempo;
float imagenAltura=12;//altura en metos de la imagen de salto
float alturapersona_pixeles;
float alturaPersonaMetros=1.8; 
int alturaplataforma=50;//se colaca la latura que tendar al plataforma
float imagenAN=12;//la anchura del lugar de salto
float gruesoPersona=3;//ancho de la personap9
float gruesoPersonaPixeles; 
float veces;
float anchopublico=5; 
float anchopublico_pixeles;
float alto_publico=6;
float Pa;
PImage edificio;
PImage edificiotecho; 
//VARIABLES PARA EL AJUSTE DE LA PANTALLA DE ACUERDO A LOS DATOS

//VARIABLES PARA EL MOVIMIENTO AMORTIGUADO
double euler;
double rt;
int coefElasticidad1=50;
double coefElasticidad=50;
double frecAngular;
double amplitud;
double longitud; 
double velocInicialMov;
double P;
double Ox;
double tiempoMovAmortiguado=0;
double posicionPersonaje;
double velocidad;
double posInicialMovAmortiguado; 
double tiempoTota;
double alfa;
double beta;
double gravedades [] = new double [3];

//VARIABLES PARA EL MOVIMIENTO AMORTIGUADO

boolean inicio=false, seguir=true/********CAMBIO QUE TODAVIA NO TIENE DAÑOS (seguir was false)************/, ajuste=true, seguir1=false;

boolean muerte=false;

//VARIABLES PARA LAS GRAFICAS Y EL MOVIMIENTO TOTAL
double anguloInicial; 
double yActualGrafica;
double yAnteriorGrafica;
double tiempoActualGrafica;
double tiempoAnteriorGrafica;
double yInicialMov;
double tiempoGrafica=0;
double convertidorMetros;
double tiempoMetros;



int primeraImagen=0;
int multiplicadortiempo=1;
float maxImagen;
int tiempoMax=25;
int cantidadT=0;
double TgraficaEnVivo=0;


double velocidadActualGrafica; 
double velocidadMaximaGrafica, velocidadMaximaGraficaEnVivo;
double velocidadMetros;
double velocidadAnteriorGrafica; 
double Ycambio;

double aceleracion; 
double aceleracionMaxima, aceleracionMaximaEnVivo;
double aceleracionMetrosGrafica;
double acelAnteriorGrafica; 
double acelActualGrafica;
double R=0;
//VARIABLES PARA LAS GRAFICAS Y EL MOVIMIENTO TOTAL

//*******VARIABLES PARA EL ZOOM******
boolean camara=false;              //
//***********************************

//*******VARIABLES PARA ANIMACIÓN DE ENTRADA***********************************
float coordenada_x_ship, coodenada_y_ship, coordenadaY_Intro,      //
                                     coordenada2da_x=-127, coordenada2da_y=6;//
PImage pjump [] = new PImage[400];                                           //
PImage jump1, jump2, jump3, jump4, jump5, jump6, jump7;                      //
PImage ship;                                                                 //
PImage plataforma;                                                           //
int contador_animar_arreglo_1=50, contador_animar_arreglo_2=0;                                               //
boolean intro;
//*****************************************************************************

//VARIABLES PARA ANIMACION SALTO

PImage prun [] = new PImage[450];
PImage run1,run2,run3,run4,run5,run6,jumpx1,jumpx2,jumpx3;
float run=34;
//***********************************************************
int contador_Mundos=0;

void setup() {

  fullScreen();
  frameRate(60);
  muertes[0]=loadImage("muerte1.jpg");
  muertes[1]=loadImage("muerte2.jpg");
  muertes[2]=loadImage("muerte3.png");
  muertes[3]=loadImage("muerte4.jpg");
  muertes[4]=loadImage("muerte5.jpg");
  muertes[5]=loadImage("muerte6.jpg");
  muertes[6]=loadImage("muerte7.jpg");
  muertes[7]=loadImage("muerte8.png");

  imagenFondo = loadImage("MAIN.png"); 
  imagenFondo.resize(width, height);
  datos = loadImage("pantalladedatos.jpg");
  datos.resize(width, height);
  escena= loadImage("scene_intro.jpg");
  escena.resize(width, height);
  escena1[0]= loadImage("escenaone.jpg");
  escena1[0].resize((int)(width*0.65), height);
  escena1[1]= loadImage("moon.png");
  escena1[1].resize((int)(width*0.65), height);// TE DIJE QUE NO***************************************************
  escena1[2]= loadImage("saturno.png");
  escena1[2].resize((int)(width*0.65), height);
  pj_cayendo[0] = loadImage("jump3.png");
  pj_cayendo[1] = loadImage("jump_xpace.png");
  enter=loadImage("enter.png");
  enter.resize(400, 25);
  invisible = loadImage("invisible.png");
  invisible.resize(400, 25);
  change =loadImage("arrowbotton.png");
  change.resize(180, 50);
  miniatura2=loadImage("marco.png");
  miniatura2.resize(300, 400);
  left= loadImage("left.png");
  left.resize(60, 50);
  right= loadImage("right.png");
  right.resize(60, 50);
  jump=loadImage("jump.png");
  jump.resize(110, 60);
  miniatura = loadImage("sky.png");
  miniatura.resize(300, 400);
  miniaturas[0] = miniatura;
  miniaturas[1] = miniatura2;
  //ANIMACIÓN DE ENTRADA
  coordenada_x_ship=height+523;
  coodenada_y_ship=280;
  print(coodenada_y_ship);
  pj = loadImage("stand.png");
  ship = loadImage("ship1.png");
  miniaturas[1] = loadImage("nivel_luna.png" );
  miniaturas[1] .resize(300, 400);
  miniaturas[2] = loadImage("saturno.jpg" );
  miniaturas[2] .resize(300, 400);
  ship.resize(290, 120);



  tempAncho = 180; 
  tempLargo = 50; 


  posx1 = width;
  posy1 = height;


  //ajuste tamaño
  porcentajePantalla=height*0.80;//el 0.8 es la cantidad pantalla que toma la torre en altura


  ajustes();
  plataforma = loadImage("plataforma2.png");
  plataforma.resize(70,8);
  edificio = loadImage("cuerpoedificio.png");
  edificiotecho = loadImage("edificio.png");
  pj.resize((int)gruesoPersonaPixeles*2, (int)alturapersona_pixeles*2);
  pesoDouble=peso;
  alturaDouble=altura;
  cuerdaDouble=cuerda;
  resistenciaDouble1=resistenciaDouble;
  gravedades [0]=9.8;
  gravedades [1]=1.62;
  gravedades [2]=10.44;

  //*********SALTO DE ENTRADA************
  jump1= loadImage("j1.png");                                                  //
  jump1.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);  //
  jump2= loadImage("j2.png");                                                  //
  jump2.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);//
  jump3= loadImage("j3.png");                                                  //
  jump3.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);//
  jump4= loadImage("j4.png");                                                  //
  jump4.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);//
  jump5= loadImage("j5.png");                                                  //
  jump5.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);//
  jump6= loadImage("j6.png");                                                  //
  jump6.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);//
  jump7= loadImage("j7.png");                                                  //
  jump7.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);//
  //***************************
  
  //****************SALTO*********************************************
  run1= loadImage("run.png");
  run1.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);
  run2= loadImage("run2.png");
  run2.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);
  run3= loadImage("run3.png");
  run3.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);
  run4= loadImage("run4.png");
  run4.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);
  run5= loadImage("run5.png");
  run5.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);
  run6= loadImage("run6.png");
  run6.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);
  jumpx1= loadImage("jump1.png");
  jumpx1.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);
  jumpx2= loadImage("jump2.png");
  jumpx2.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);
  jumpx3= loadImage("jump3.png");
  jumpx3.resize((int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);
  
  
  for (int pepa=0; pepa<=451; pepa++) {
    if (pepa<25) {
      pjump[pepa]=jump1;
      enterx[pepa]=enter;
      prun[pepa]=run1;
    } else if (pepa>=25&&pepa<40) {
      pjump[pepa]=jump2;
      enterx[pepa]=enter;
      prun[pepa]=run2;
    } else if (pepa>=40&&pepa<100) {
      pjump[pepa]=jump3;
      enterx[pepa]=invisible;
      prun[pepa]=run3;
    } else if (pepa>=100&&pepa<125) {
      pjump[pepa]=jump4;
      prun[pepa]=run4;
    } else if (pepa>=125&&pepa<150) {
      pjump[pepa]=jump5;
      prun[pepa]=run5;
    } else if (pepa>=150&&pepa<160) {
      pjump[pepa]=jump6;
      prun[pepa]=run6;
    } else if (pepa>=160&&pepa<190) {
      pjump[pepa]=jump7;
      prun[pepa]=run1;
    } else if (pepa>=190&&pepa<=250) {
      pjump[pepa]=pj;
      prun[pepa]=run2;
    } else if (pepa>250&&pepa<300) {
      prun[pepa]=run3;
    } else if (pepa>=300&&pepa<350) {
      prun[pepa]=jumpx1;
    } else if (pepa>=350&&pepa<400) {
      prun[pepa]=jumpx2;
    } else if (pepa>=400&&pepa<450) {
      prun[pepa]=jumpx3;
    }
    //println("*"+pepa);
  }
}


void draw() {

  switch(caso) {


  case 0:
    image(imagenFondo, 0, 0);  

    if (i==100) {
      i=0;
    }     
    image(enterx[i], posx1/2-186, posy1/2+300);
    i++;

  break;

  case 1:
    image(datos, 0, 0);
    textSize(24);    
    i=0;
    text("MASA", posx1/2-390, posy1/2-120);
    image(change, posx1/2-450, posy1/2-110);
    text(peso, posx1/2-380, posy1/2-80);


    text("ALTURA", posx1/2-405, posy1/2-35);
    image(change, posx1/2-450, posy1/2-30);
    text(altura, posx1/2-380, posy1/2);


    text("CUERDA", posx1/2-405, posy1/1.88+20);
    image(change, posx1/2-450, posy1/1.88+20);
    text(cuerda, posx1/2-380, posy1/1.88+50);


    text("F.RETARDANTE", posx1/2-440, posy1/1.88+100);
    image(change, posx1/2-450, posy1/1.88+100);
    text(resistenciaDouble, posx1/2-376, posy1/1.88+130);
//coefElasticidad1
     
     
     text("C.Elasticidad", posx1/2-440, posy1/1.88+180);
    image(change, posx1/2-450, posy1/1.88+180);
    text(coefElasticidad1, posx1/2-376, posy1/1.88+210);

    image(miniaturas[contador_Mundos], posx1/2+80, posy1/2-160);
    image(left, posx1/2+10, posy1/2);
    image(right, posx1/2+390, posy1/2);

    image(jump, posx1-250, posy1-180);
    intro = true;
    
    break;
    
    
  case 2:
  
  
    //******************************************************||||INTRO||||****************************************************************
    image(escena, 0, 0);
    i=0;
    veces=alturaplataforma_pixeles/alturaEdificioPixeles;//iA
    veces++; 
    while (i<=veces) {
      if (i==0) {

      image(edificiotecho, -5, height-alturaplataforma_pixeles+(alturaEdificioPixeles*i)-3*metros, anchoedificio+8, alturaEdificioPixeles);//se genera el lugar del cual se salta
      image(plataforma, anchoedificio-29,height-alturaplataforma_pixeles-(alturapersona_pixeles/2)-10);
      } else {
        image(edificio, 0, height-alturaplataforma_pixeles+(alturaEdificioPixeles*i)-3*metros, anchoedificio, alturaEdificioPixeles);
      }
      i++;
    }    
    if (coordenada_x_ship>height/6) { 
      if (!mousePressed) {
        coordenada_x_ship=coordenada_x_ship-4;
        contador_animar_arreglo_1=50;
      }
      image(pj, coordenada_x_ship+160, coodenada_y_ship-13, (int)gruesoPersonaPixeles*2, (int)alturapersona_pixeles*2);
      image(ship, coordenada_x_ship, coodenada_y_ship);
    } else if (coordenada_x_ship<height/6 && coodenada_y_ship>6) {
      if (!mousePressed) {
        coordenada_x_ship--;
        coodenada_y_ship--;
      }
      image(pj, coordenada_x_ship+160, coodenada_y_ship-13, (int)gruesoPersonaPixeles*2, (int)alturapersona_pixeles*2);
      image(ship, coordenada_x_ship, coodenada_y_ship);
    } else if (coordenada_x_ship==-127&&coodenada_y_ship==6) {
      image(ship, coordenada_x_ship, coodenada_y_ship);
      image(pj, coordenada_x_ship+160, coodenada_y_ship-13, (int)gruesoPersonaPixeles*2, (int)alturapersona_pixeles*2);
      delay(1000);
      if (!mousePressed) {
        coodenada_y_ship--;
        coordenada_x_ship--;
        coordenadaY_Intro=coodenada_y_ship+1;
      }
    } else if (coordenada_x_ship<-127) {
      if(intro){
      image(ship, coordenada2da_x, coordenada2da_y);
      image(pjump[contador_animar_arreglo_1], 34, coordenadaY_Intro-12);
      if (!mousePressed&&coordenadaY_Intro<125) {
        coordenadaY_Intro++;
      }
      if (contador_animar_arreglo_1<250) {
        contador_animar_arreglo_1++;
      } else {
        contador_animar_arreglo_1=250;
        intro =false;
      }
      
      if(contador_animar_arreglo_1<=250 && coordenada2da_y>-300){
        coordenada2da_y--;
      }
      }
      
      if(!intro){
          image(prun[contador_animar_arreglo_2], run,coordenadaY_Intro-4);
          if(run<167&&!mousePressed){
            run++;
          }
          else if(run>=167  &&  coordenadaY_Intro-4<(float)posicionPersonaje-alturapersona_pixeles/2  &&  !mousePressed){
          text(run,mouseX,mouseY);
            coordenadaY_Intro++;
          }
          if(contador_animar_arreglo_2<440){
            contador_animar_arreglo_2+=2;
          }
      }
    }
  break;




  
  case 3:
  
    if (camara) {
      translate(410, 150+movemen, 400);//**Zoom***Coordenadas que funcionan: 310, 100,300 && 410, 150,400
    }
    imageMode(CORNER);  
    

    if (primeraImagen==0) {
      velocidad=0;
      inicio=true;
      ajuste=true;
      if(contador_Mundos==1){
        R=1;
        resistenciaDouble1=0;
      }
      if(contador_Mundos==2){
        R=1;
      }
      if(contador_Mundos==0){
        Num_perso=0;
      }else{
        Num_perso=1;
      }
      
      while (tiempoTota<=15) {
        if (resistenciaDouble1>0) {
          if (posicionPersonaje<=height-(alturapersona_pixeles/2)-(alturaplataforma_pixeles-cuerda*metros) &&inicio ==true && seguir ==true) {

            tiempoMovAmortiguado=0; 

            rt=pesoDouble*9.18/resistenciaDouble1;
            euler=1/Math.pow(Math.E, gravedades [contador_Mundos]*tiempoCaidaLibre/rt);
            posicionPersonaje=height-alturaplataforma_pixeles-(-rt*tiempoCaidaLibre+(rt*rt/gravedades [contador_Mundos])*(1-euler))*metros;
            velocidad=rt-rt*euler ;


            yActualGrafica=-(-rt*tiempoCaidaLibre+(rt*rt/gravedades [contador_Mundos])*(1-euler));

            aceleracion=gravedades [contador_Mundos]-resistenciaDouble1*velocidad/pesoDouble;

            posInicialMovAmortiguado=posicionPersonaje;
            tiempoCaidaLibre+=0.025*multiplicadortiempo;
            tiempoTota+=0.025*multiplicadortiempo;

            if (posicionPersonaje>=height-(alturapersona_pixeles/2)-(alturaplataforma_pixeles-cuerda*metros)) {
              seguir=false;
            }
          } else if (inicio ==true && seguir==false) {
            tiempoMovAmortiguado+=0.025*multiplicadortiempo;
            tiempoTota+=0.025*multiplicadortiempo;


            euler=1/Math.pow(Math.E, (resistenciaDouble1*tiempoMovAmortiguado/(2*pesoDouble)));

            if (ajuste) {

              longitud=pesoDouble*gravedades [contador_Mundos]/coefElasticidad;
              ajuste=false;
              velocInicialMov=velocidad;
              frecAngular=Math.sqrt(coefElasticidad/pesoDouble);
              amplitud=Math.sqrt(pesoDouble*velocInicialMov*velocInicialMov/coefElasticidad+longitud*longitud);
              anguloInicial=Math.acos(-longitud/amplitud);
            }

            Ox=resistenciaDouble1/(pesoDouble*2);



            posicionPersonaje=posInicialMovAmortiguado+longitud*metros+(amplitud*euler*Math.cos(frecAngular*tiempoMovAmortiguado-anguloInicial))*metros;
            velocidad=-amplitud*euler*(resistenciaDouble1/2/pesoDouble+Math.sin(frecAngular*tiempoMovAmortiguado-anguloInicial)*frecAngular);

            yActualGrafica=longitud+(amplitud*euler*Math.cos(frecAngular*tiempoMovAmortiguado-anguloInicial));


            aceleracion=(gravedades [contador_Mundos]-coefElasticidad*(yActualGrafica)/pesoDouble-resistenciaDouble1*-velocidad/pesoDouble)*0.5  ;

            //delay (2); *****
          }
        } else {


          if (posicionPersonaje<=height-(alturapersona_pixeles/2)-(alturaplataforma_pixeles-cuerda*metros) &&inicio ==true && seguir ==true) {
          velocidad=gravedades [contador_Mundos]*tiempoCaidaLibre;

          posicionPersonaje=height-alturaplataforma_pixeles-(-0.5*gravedades [contador_Mundos]*tiempoCaidaLibre*tiempoCaidaLibre)*metros;
          
          aceleracion=gravedades [contador_Mundos];


          yInicialMov=yActualGrafica;
          posInicialMovAmortiguado=posicionPersonaje;


          tiempoMovAmortiguado=0;
          tiempoCaidaLibre+=0.025;
          tiempoTota+=0.025;

          if (posicionPersonaje>=height-(alturapersona_pixeles/2)-(alturaplataforma_pixeles-cuerda*metros)) {
            seguir=false;
          }
        } else {

          if (inicio ==true && seguir==false) {

            if (ajuste) {

              longitud=pesoDouble*gravedades [contador_Mundos]/coefElasticidad;
              ajuste=false;
              velocInicialMov=velocidad;
              frecAngular=Math.sqrt(coefElasticidad/pesoDouble);
              amplitud=Math.sqrt(velocInicialMov*velocInicialMov/(frecAngular*frecAngular));
              anguloInicial=Math.atan(longitud*frecAngular/velocInicialMov);
            }

            posicionPersonaje=posInicialMovAmortiguado+(amplitud*Math.sin(frecAngular*tiempoMovAmortiguado+0))*metros;

            velocidad= -amplitud*frecAngular*Math.cos(frecAngular*tiempoMovAmortiguado);


            aceleracion=amplitud*frecAngular*frecAngular*Math.sin(frecAngular*tiempoMovAmortiguado);
            tiempoMovAmortiguado+=0.025;
            tiempoTota+=0.025;
            
          }
        }
        }

        if (velocidadMaximaGraficaEnVivo<-velocidad) {
          velocidadMaximaGraficaEnVivo=-velocidad;
        }
        if (velocidadMaximaGraficaEnVivo<velocidad) {
          velocidadMaximaGraficaEnVivo=velocidad;
        }
        if (aceleracionMaximaEnVivo<-aceleracion) {
          aceleracionMaximaEnVivo=-aceleracion;
        }

        if (aceleracionMaximaEnVivo<aceleracion) {
          aceleracionMaximaEnVivo=aceleracion;
        }
        
        println( aceleracion+ "     "+aceleracionMaximaEnVivo);
      }

      println( aceleracionMaximaEnVivo);
      //inicio=false;*********************************************************************************************************************************************Y ESTO
      seguir = true;
      ajuste=true;
      //R=0; *****************************************************************************************************************************************************CAMBIÉ ESTO
      posicionPersonaje=height-alturaplataforma_pixeles-(alturapersona_pixeles/2);//pocicion inicila de la persona
      tiempoTota=0;
      tiempoMovAmortiguado=0;
      tiempoCaidaLibre=0;
      velocidad=0;
      aceleracion=0;
      muerte=false;
      velocidadMetros=height*0.30/(velocidadMaximaGraficaEnVivo*2);
      aceleracionMetrosGrafica=height*0.30/(aceleracionMaximaEnVivo*2);
      background(250);
    }
    if (primeraImagen==0) {
      background(250);
    }

    image(escena1[contador_Mundos], 0, 0);
    primeraImagen=1;
    i=0;
    veces=alturaplataforma_pixeles/alturaEdificioPixeles+metros;//iA
    veces++; 
    while (i<=veces && contador_Mundos==0) {
      if (i==0) {

        image(edificiotecho, -5, height-alturaplataforma_pixeles+(alturaEdificioPixeles*i)-3*metros, anchoedificio+8, alturaEdificioPixeles);//se genera el lugar del cual se salta
        image(plataforma, anchoedificio-29,height-alturaplataforma_pixeles-(alturapersona_pixeles/2)-10);
      } else {
        image(edificio, 0, height-alturaplataforma_pixeles+(alturaEdificioPixeles*i)-3*metros, anchoedificio, alturaEdificioPixeles);
      }
      i++;
    }
    if (contador_Mundos>=1) {

        image(ship, -5, height-alturaplataforma_pixeles+(alturaEdificioPixeles*i)-3*metros, anchoedificio+8, alturaEdificioPixeles);//se genera el lugar del cual se salta
        image(plataforma, anchoedificio-29,height-alturaplataforma_pixeles-(alturapersona_pixeles/2)-10);
      }

    i=1;
    veces=width/anchopublico_pixeles;
    veces++;

    strokeWeight(3);
    line(gruesoPersonaPixeles/2+anchoedificio, (height-alturaplataforma_pixeles-(alturapersona_pixeles/2))-5, gruesoPersonaPixeles/2+anchoedificio, (float)posicionPersonaje);
    strokeWeight(1);
    image(pj_cayendo[Num_perso], anchoedificio-6, (float)posicionPersonaje-alturapersona_pixeles/2, (int)gruesoPersonaPixeles*2-1, (int)alturapersona_pixeles*2-7);
    text( "velocidad: "+velocidad+ "\nAceleracion: "+ aceleracion+ "\nTiempo: "+ tiempoTota+ "\nvelocidadT: "+multiplicadortiempo, gruesoPersonaPixeles + 300, 100);



    if (posicionPersonaje+alturapersona_pixeles>height) {
      muerte=true;
      num_muerte=(int)random(7);
      caso=4;
      background(150);
      tiempoActualGrafica=0;
      tiempoAnteriorGrafica=0;
      tiempoGrafica=0;
      yActualGrafica=0;
      yAnteriorGrafica=0;
    }


    if (!mousePressed)
    {
      if (tiempoMax>TgraficaEnVivo & TgraficaEnVivo>0.01) {
        tiempoMetros=width*0.30/tiempoMax;
        convertidorMetros=height*0.30/altura;
        fill(0);
        text("altura ", width*0.75, height*0.03);
        line( width*0.7+(float)TgraficaEnVivo*(float)tiempoMetros, height*0.03+(float)(yActualGrafica)*(float)convertidorMetros, width*0.7+(float)(TgraficaEnVivo-0.01*multiplicadortiempo)*(float)tiempoMetros, height*0.03+(float)(yAnteriorGrafica)*(float)convertidorMetros);
        
        text(String.format("%.2f",(float)altura), width*0.65, height*0.03);
        line(width*0.65, height*0.03, width, height*0.03);

        text(String.format("%.2f",(float)altura*3/4), width*0.65, height*(0.03+(0.3/4)));
        line(width*0.65, height*(0.03+(0.3/4)), width, height*(0.03+(0.3/4)));

        text(String.format("%.2f",(float)altura*2/4), width*0.65, height*(0.03+(2*0.3/4)));
        line(width*0.65, height*(0.03+(2*0.3/4)), width, height*(0.03+(2*0.3/4)));

        text(String.format("%.2f",(float)altura*1/4), width*0.65, height*(0.03+(3*0.3/4)));
        line(width*0.65, height*(0.03+(3*0.3/4)), width, height*(0.03+(3*0.3/4)));
        
        text(String.format("%.2f",(float)altura*0), width*0.65, height*(0.03+(0.3)));
        line(width*0.65, height*(0.03+(0.3)), width, height*(0.03+(0.3)));
        

        text("velocidad ", width*0.75, height*0.36);
        line( width*0.7+(float)TgraficaEnVivo*(float)tiempoMetros, height*(0.36+0.3/2)+(float)(velocidadActualGrafica)*(float)velocidadMetros, width*0.7+(float)(TgraficaEnVivo-0.01*multiplicadortiempo)*(float)tiempoMetros, height*(0.36+0.3/2)+(float)(velocidadAnteriorGrafica)*(float)velocidadMetros);
        
        text(String.format("%.2f",(float)velocidadMaximaGraficaEnVivo), width*0.65, height*0.36);
        line(width*0.65, height*0.36, width, height*0.36);

        text(String.format("%.2f",(float)velocidadMaximaGraficaEnVivo*1/2), width*0.65, height*(0.36+(3*0.3/4)));
        line(width*0.65, height*(0.36+(3*0.3/4)), width, height*(0.36+(3*0.3/4)));

        text("0", width*0.67,height*(0.36+(2*0.3/4)));
        line(width*0.65, height*(0.36+(2*0.3/4)), width, height*(0.36+(2*0.3/4)));

        text(String.format("%.2f",(float) -velocidadMaximaGraficaEnVivo*1/2), width*0.65, height*(0.36+(1*0.3/4)));
        line(width*0.65, height*(0.36+(1*0.3/4)), width, height*(0.36+(1*0.3/4)));

        text(String.format("%.2f",(float)-velocidadMaximaGraficaEnVivo), width*0.65, height*(0.36+(0.3)));
        line(width*0.65, height*(0.36+(0.3)), width, height*(0.36+(0.3)));


        text("aceleracion ", width*0.75, height*0.69);
        line( width*0.7+(float)TgraficaEnVivo*(float)tiempoMetros, height*(0.69+0.3/2)+(float)(acelActualGrafica)*(float)aceleracionMetrosGrafica, width*0.7+(float)(TgraficaEnVivo-0.01*multiplicadortiempo)*(float)tiempoMetros, height*(0.69+0.3/2)+(float)(acelAnteriorGrafica)*(float)aceleracionMetrosGrafica);
        
        text(String.format("%.2f",(float) aceleracionMaximaEnVivo) , width*0.65, height*0.69);
        line(width*0.65, height*0.69, width, height*0.69);

        text(String.format("%.2f",(float)-aceleracionMaximaEnVivo*1/2), width*0.65, height*(0.69+(3*0.3/4)));
        line(width*0.65, height*(0.69+(3*0.3/4)), width, height*(0.69+(3*0.3/4)));

        text("0", width*0.65,height*(0.69+(2*0.3/4)));
        line(width*0.65, height*(0.69+(2*0.3/4)), width, height*(0.69+(2*0.3/4)));

        text(String.format("%.2f",(float)aceleracionMaximaEnVivo*1/2), width*0.65, height*(0.69+(1*0.3/4)));
        line(width*0.65, height*(0.69+(1*0.3/4)), width, height*(0.69+(1*0.3/4)));

        text(String.format("%.2f",(float)-aceleracionMaximaEnVivo), width*0.65, height*(0.69+(0.3)));
        line(width*0.65, height*(0.69+(0.3)), width, height*(0.69+(0.3)));



        fill(250);
      } else {
        if (tiempoMax<TgraficaEnVivo) {
          TgraficaEnVivo=0;
          cantidadT+=10;
          rect(width*0.65,0,width,height);
        }
      }

      if (resistenciaDouble1>0) {
        if (posicionPersonaje<=height-(alturapersona_pixeles/2)-(alturaplataforma_pixeles-cuerda*metros) &&inicio ==true && seguir ==true) {

          tiempoMovAmortiguado=0; 
          rt=pesoDouble*9.18/resistenciaDouble1;
          euler=1/Math.pow(Math.E, gravedades [contador_Mundos]*tiempoCaidaLibre/rt);
          posicionPersonaje=height-alturaplataforma_pixeles-(-rt*tiempoCaidaLibre+(rt*rt/gravedades [contador_Mundos])*(1-euler))*metros;
          velocidad=rt-rt*euler ;

          yAnteriorGrafica=yActualGrafica;
          yActualGrafica=-(-rt*tiempoCaidaLibre+(rt*rt/gravedades [contador_Mundos])*(1-euler));
          yInicialMov=yActualGrafica;

          velocidadAnteriorGrafica=velocidadActualGrafica;
          velocidadActualGrafica=-(rt-rt*euler) ;
          //*************************************************************************************************************************************************************************
          acelAnteriorGrafica=acelActualGrafica;
          acelActualGrafica=-(gravedades [contador_Mundos]-resistenciaDouble1*-velocidadActualGrafica/pesoDouble);

          aceleracion=gravedades [contador_Mundos]-resistenciaDouble1*velocidad/pesoDouble;
          posInicialMovAmortiguado=posicionPersonaje;

          tiempoCaidaLibre+=0.025*multiplicadortiempo;
          tiempoTota+=0.025*multiplicadortiempo;
          TgraficaEnVivo+=0.025*multiplicadortiempo;

          if (posicionPersonaje>=height-(alturapersona_pixeles/2)-(alturaplataforma_pixeles-cuerda*metros)) {
            seguir=false;
          }
        } else if (inicio ==true && seguir==false) {
          tiempoMovAmortiguado+=0.025*multiplicadortiempo;
          tiempoTota+=0.025*multiplicadortiempo;
          TgraficaEnVivo+=0.025*multiplicadortiempo;

          euler=1/Math.pow(Math.E, (resistenciaDouble1*tiempoMovAmortiguado/(2*pesoDouble)));

          if (ajuste) {

            longitud=pesoDouble*gravedades [contador_Mundos]/coefElasticidad;
            ajuste=false;
            velocInicialMov=velocidad;
            frecAngular=Math.sqrt(coefElasticidad/pesoDouble);
            amplitud=Math.sqrt(pesoDouble*velocInicialMov*velocInicialMov/coefElasticidad+longitud*longitud);
            anguloInicial=Math.acos(-longitud/amplitud);
          }

          Ox=resistenciaDouble1/(pesoDouble*2);



          posicionPersonaje=posInicialMovAmortiguado+longitud*metros+(amplitud*euler*Math.cos(frecAngular*tiempoMovAmortiguado-anguloInicial))*metros;
          velocidad=-amplitud*euler*(resistenciaDouble1/2/pesoDouble+Math.sin(frecAngular*tiempoMovAmortiguado-anguloInicial)*frecAngular);
          velocidadAnteriorGrafica=velocidadActualGrafica;
          velocidadActualGrafica=amplitud*euler*(resistenciaDouble1/2/pesoDouble+Math.sin(frecAngular*tiempoMovAmortiguado-anguloInicial)*frecAngular) ;


          yAnteriorGrafica=yActualGrafica;
          yActualGrafica=yInicialMov+longitud+(amplitud*euler*Math.cos(frecAngular*tiempoMovAmortiguado-anguloInicial));
          aceleracion=-(gravedades [contador_Mundos]-coefElasticidad*(yActualGrafica-yInicialMov)/pesoDouble-resistenciaDouble1*-velocidad/pesoDouble )*0.5 ;

          acelAnteriorGrafica=acelActualGrafica;
          acelActualGrafica=-(gravedades [contador_Mundos]-coefElasticidad*(yActualGrafica-yInicialMov)/pesoDouble-resistenciaDouble1*-velocidad/pesoDouble )*0.5;
        }
      } else {


        if (posicionPersonaje<=height-(alturapersona_pixeles/2)-(alturaplataforma_pixeles-cuerda*metros) &&inicio ==true && seguir ==true) {
          velocidad=gravedades [contador_Mundos]*tiempoCaidaLibre;
          velocidadAnteriorGrafica=velocidadActualGrafica;
          velocidadActualGrafica=-gravedades [contador_Mundos]*tiempoCaidaLibre ;

          posicionPersonaje=height-alturaplataforma_pixeles-(-0.5*gravedades [contador_Mundos]*tiempoCaidaLibre*tiempoCaidaLibre)*metros;
          yAnteriorGrafica=yActualGrafica;
          yActualGrafica=(0.5*gravedades [contador_Mundos]*tiempoCaidaLibre*tiempoCaidaLibre);
          aceleracion=gravedades [contador_Mundos];
          acelAnteriorGrafica=acelActualGrafica;
          acelActualGrafica=-gravedades [contador_Mundos]*0.5;


          yInicialMov=yActualGrafica;
          posInicialMovAmortiguado=posicionPersonaje;


          tiempoMovAmortiguado=0;
          tiempoCaidaLibre+=0.025*multiplicadortiempo;
          tiempoTota+=0.025*multiplicadortiempo;
          TgraficaEnVivo+=0.025*multiplicadortiempo;

          if (posicionPersonaje>=height-(alturapersona_pixeles/2)-(alturaplataforma_pixeles-cuerda*metros)) {
            seguir=false;
          }
        } else {

          if (inicio ==true && seguir==false) {

            if (ajuste) {

              longitud=pesoDouble*gravedades [contador_Mundos]/coefElasticidad;
              ajuste=false;
              velocInicialMov=velocidad;
              frecAngular=Math.sqrt(coefElasticidad/pesoDouble);
              amplitud=Math.sqrt(velocInicialMov*velocInicialMov/(frecAngular*frecAngular));
              anguloInicial=Math.atan(longitud*frecAngular/velocInicialMov);
            }
            yAnteriorGrafica=yActualGrafica;
            yActualGrafica=yInicialMov+(amplitud*Math.sin(frecAngular*tiempoMovAmortiguado+0));

            posicionPersonaje=posInicialMovAmortiguado+(amplitud*Math.sin(frecAngular*tiempoMovAmortiguado+0))*metros;

            velocidad= -amplitud*frecAngular*Math.cos(frecAngular*tiempoMovAmortiguado);
            velocidadAnteriorGrafica=velocidadActualGrafica;
            velocidadActualGrafica=-amplitud*frecAngular*Math.cos(frecAngular*tiempoMovAmortiguado) ;


            aceleracion=amplitud*frecAngular*frecAngular*Math.sin(frecAngular*tiempoMovAmortiguado);

            acelAnteriorGrafica=acelActualGrafica;
            acelActualGrafica=(amplitud*frecAngular*frecAngular*Math.sin(frecAngular*tiempoMovAmortiguado));

            tiempoMovAmortiguado+=0.025*multiplicadortiempo;
            tiempoTota+=0.025*multiplicadortiempo;
            TgraficaEnVivo+=0.025*multiplicadortiempo;
          }
        }
      }
    }
    if (velocidadMaximaGrafica<velocidad) {
      velocidadMaximaGrafica=velocidad;
    }
      if (velocidadMaximaGrafica<-velocidad) {
      velocidadMaximaGrafica=-velocidad;
    }
    if (aceleracionMaxima<aceleracion) {
      aceleracionMaxima=aceleracion;
    }

    if (aceleracionMaxima<-aceleracion) {
      aceleracionMaxima=-aceleracion;
    }
    
    
    
    break;



  case 4: 

    yInicialMov=0;
    acelActualGrafica=0;
    acelAnteriorGrafica=0;
    Ycambio=0;
    can=0;
    seguir1=true;
    ajuste=true;

    convertidorMetros=height*0.45/altura;
    tiempoMetros=width*0.45/tiempoTota;




    aceleracionMetrosGrafica=height*0.45/(aceleracionMaxima*2);
    velocidadMetros=height*0.45/(velocidadMaximaGrafica*2);
    P=0;

    strokeWeight(0); 
    fill(250);


    while (tiempoGrafica<tiempoTota & !muerte) {


      if (resistenciaDouble1>0) {


        if (Ycambio<=height-(alturapersona_pixeles/2)-(alturaplataforma_pixeles-cuerda*metros) &&inicio ==true && seguir1 ==true) {
          //y=y+(pixeles_en_caida*t*t*1/2);


          rt=pesoDouble*9.18/resistenciaDouble1;
          euler=1/Math.pow(Math.E, gravedades [contador_Mundos]*tiempoActualGrafica/rt);

          Ycambio=height-alturaplataforma_pixeles-(-rt*tiempoActualGrafica+(rt*rt/gravedades [contador_Mundos])*(1-euler))*metros;

          yAnteriorGrafica=yActualGrafica;
          yActualGrafica=-(-rt*tiempoActualGrafica+(rt*rt/gravedades [contador_Mundos])*(1-euler));

          velocidadAnteriorGrafica=velocidadActualGrafica;
          velocidadActualGrafica=-(rt-rt*euler) ;

          acelAnteriorGrafica=acelActualGrafica;
          acelActualGrafica=-(gravedades [contador_Mundos]-resistenciaDouble1*-velocidadActualGrafica/pesoDouble);

          yInicialMov=yActualGrafica;
          tiempoActualGrafica+=0.01;
          tiempoGrafica+=0.01;

          if (Ycambio>=height-(alturapersona_pixeles/2)-(alturaplataforma_pixeles-cuerda*metros)) {
            seguir1=false;
          }
          // delay (10);//detiene el codigo el numero de parentesis equivalea 1000 cada segundo lo redujimos para que la ejecusion fuera fluida
        } else if (inicio && seguir1==false) {

          euler=1/Math.pow(Math.E, (resistenciaDouble1*tiempoAnteriorGrafica/(2*pesoDouble)));

          if (ajuste) {

            longitud=pesoDouble*gravedades [contador_Mundos]/coefElasticidad;
            ajuste=false;
            velocInicialMov=velocidadActualGrafica;
            frecAngular=Math.sqrt(coefElasticidad/pesoDouble);
            amplitud=Math.sqrt(pesoDouble*velocInicialMov*velocInicialMov/coefElasticidad+longitud*longitud);
            anguloInicial=Math.acos(-longitud/amplitud);
          }

          Ox=resistenciaDouble1/(pesoDouble*2);



          yAnteriorGrafica=yActualGrafica;
          yActualGrafica=yInicialMov+longitud+(amplitud*euler*Math.cos(frecAngular*tiempoAnteriorGrafica-anguloInicial));

          velocidadAnteriorGrafica=velocidadActualGrafica;
          velocidadActualGrafica=amplitud*euler*(resistenciaDouble1/2/pesoDouble+Math.sin(frecAngular*tiempoAnteriorGrafica-anguloInicial)*frecAngular);
          //*************************************************************************************************************************************************************************
          acelAnteriorGrafica=acelActualGrafica;
          acelActualGrafica=-(gravedades [contador_Mundos]-coefElasticidad*(yActualGrafica-yInicialMov)/pesoDouble-resistenciaDouble1*-velocidadActualGrafica/pesoDouble)*0.5  ;
          tiempoAnteriorGrafica+=0.01;
          tiempoGrafica+=0.01;
        }
      } else {


        if (Ycambio<=height-(alturapersona_pixeles/2)-(alturaplataforma_pixeles-cuerda*metros) &&inicio ==true && seguir1 ==true) {

          velocidadAnteriorGrafica=velocidadActualGrafica;
          velocidadActualGrafica=-gravedades [contador_Mundos]*tiempoActualGrafica;


          Ycambio=height-alturaplataforma_pixeles-(-0.5*gravedades [contador_Mundos]*tiempoActualGrafica*tiempoActualGrafica)*metros;

          acelAnteriorGrafica=acelActualGrafica;
          acelActualGrafica=-gravedades [contador_Mundos];

          yAnteriorGrafica=yActualGrafica;
          yActualGrafica=(0.5*gravedades [contador_Mundos]*tiempoActualGrafica*tiempoActualGrafica);
          yInicialMov=yActualGrafica;
          posInicialMovAmortiguado=posicionPersonaje;


          tiempoAnteriorGrafica=0;
          tiempoActualGrafica+=0.01;
          tiempoGrafica+=0.01;
          if (Ycambio>=height-(alturapersona_pixeles/2)-(alturaplataforma_pixeles-cuerda*metros)) {
            seguir1=false;
          }
        } else {

          if (inicio ==true && seguir1==false) {

            if (ajuste) {
              longitud=pesoDouble*gravedades [contador_Mundos]/coefElasticidad;
              ajuste=false;
              velocInicialMov=velocidadActualGrafica;
              frecAngular=Math.sqrt(coefElasticidad/pesoDouble);
              amplitud=Math.sqrt(velocInicialMov*velocInicialMov/(frecAngular*frecAngular));
              anguloInicial=Math.atan(longitud*frecAngular/velocInicialMov);
            }
            
            yAnteriorGrafica=yActualGrafica;
            yActualGrafica=yInicialMov+(amplitud*Math.sin(frecAngular*tiempoAnteriorGrafica));
            Ycambio=posInicialMovAmortiguado+(amplitud*Math.sin(frecAngular*tiempoAnteriorGrafica))*metros;

            velocidadAnteriorGrafica=velocidadActualGrafica;
            velocidadActualGrafica=-amplitud*frecAngular*Math.cos(frecAngular*tiempoAnteriorGrafica);

            acelAnteriorGrafica=acelActualGrafica;
            acelActualGrafica=amplitud*frecAngular*frecAngular*Math.sin(frecAngular*tiempoAnteriorGrafica);  

            tiempoAnteriorGrafica+=0.01;
            tiempoGrafica+=0.01;
          }
        }
      }

      if (P!=0) {
        stroke(25);
        strokeWeight(5);

        line( width-width*0.95+(float)tiempoGrafica*(float)tiempoMetros, height*0.05+(float)(yActualGrafica)*(float)convertidorMetros, width-width*0.95+(float)(tiempoGrafica-0.01)*(float)tiempoMetros, height*0.05+(float)(yAnteriorGrafica)*(float)convertidorMetros);
        line( width-width*0.45+(float)tiempoGrafica*(float)tiempoMetros, height*(0.05+(0.45/2))+(float)(velocidadActualGrafica)*(float)velocidadMetros, width-width*0.45+(float)(tiempoGrafica-0.01)*(float)tiempoMetros, height*(0.05+(0.45/2))+(float)(velocidadAnteriorGrafica)*(float)velocidadMetros);
        line( width-width*0.95+(float)tiempoGrafica*(float)tiempoMetros, height*(0.55+(0.45/2))+(float)acelActualGrafica*(float)aceleracionMetrosGrafica, width-width*0.95+(float)(tiempoGrafica-0.01)*(float)tiempoMetros, height*(0.55+(0.45/2))+(float)acelAnteriorGrafica*(float)aceleracionMetrosGrafica);
        strokeWeight(1);

        stroke(25);
        fill(0);
        //Aquí se colocan las líneas que atraviesan la grafica y los valores Aproximados en la grafica  
        text(String.format("%.2f",(float)altura), width-width*0.98, height*0.05);
        line(width-width*0.95, (height*0.05), width-width*0.5, (height*0.05));

        text(String.format("%.2f",(float)altura*7/8), width-width*0.98, height*(0.05+(1*0.45/8)));
        line(width-width*0.95, height*(0.05+(1*0.45/8)), width-width*0.5, height*(0.05+(1*0.45/8)));

        text(String.format("%.2f",(float)altura*6/8), width-width*0.98, height*(0.05+(2*0.45/8)));
        line(width-width*0.95, height*(0.05+(2*0.45/8)), width-width*0.5, height*(0.05+(2*0.45/8)));

        text(String.format("%.2f",(float)altura*5/8), width-width*0.98, height*(0.05+(3*0.45/8)));
        line(width-width*0.95, height*(0.05+(3*0.45/8)), width-width*0.5, height*(0.05+(3*0.45/8)));

        text(String.format("%.2f",(float)altura*4/8), width-width*0.98, height*(0.05+(4*0.45/8)));
        line(width-width*0.95, height*(0.05+(4*0.45/8)), width-width*0.5, height*(0.05+(4*0.45/8)));

        text(String.format("%.2f",(float)altura*3/8), width-width*0.98, height*(0.05+(5*0.45/8)));
        line(width-width*0.95, height*(0.05+(5*0.45/8)), width-width*0.5, height*(0.05+(5*0.45/8)));

        text(String.format("%.2f",(float)altura*2/8), width-width*0.98, height*(0.05+(6*0.45/8)));
        line(width-width*0.95, height*(0.05+(6*0.45/8)), width-width*0.5, height*(0.05+(6*0.45/8)));

        text(String.format("%.2f",(float)altura*1/8), width-width*0.98, height*(0.05+(7*0.45/8)));
        line(width-width*0.95, height*(0.05+(7*0.45/8)), width-width*0.5, height*(0.05+(7*0.45/8)));

        text(String.format("%.2f",(float)altura*0/8), width-width*0.98, height*(0.05+(8*0.45/8)));
        line(width-width*0.95, height*(0.05+(8*0.45/8)), width-width*0.5, height*(0.05+(8*0.45/8)));
        fill(0);
        text("T", width-width*0.495, height*(0.05+(8*0.45/8)));

        text(String.format("%.2f",(float) velocidadMaximaGrafica), width-width*0.48, height*0.05);
        line(width-width*0.45, (height*0.05), width, (height*0.05));

        text(String.format("%.2f",(float)velocidadMaximaGrafica*3/4), width-width*0.48, height*(0.05+(1*0.45/8)));
        line(width-width*0.45, height*(0.05+(1*0.45/8)), width, height*(0.05+(1*0.45/8)));

        text(String.format("%.2f",(float)velocidadMaximaGrafica*2/4), width-width*0.48, height*(0.05+(2*0.45/8)));
        line(width-width*0.45, height*(0.05+(2*0.45/8)), width, height*(0.05+(2*0.45/8)));

        text(String.format("%.2f",(float)velocidadMaximaGrafica*1/4), width-width*0.48, height*(0.05+(3*0.45/8)));
        line(width-width*0.45, height*(0.05+(3*0.45/8)), width, height*(0.05+(3*0.45/8)));

        text(String.format("%.2f",(float)velocidadMaximaGrafica*0), width-width*0.48, height*(0.05+(4*0.45/8)));
        line(width-width*0.45, height*(0.05+(4*0.45/8)), width, height*(0.05+(4*0.45/8)));

        text(String.format("%.2f",(float)-velocidadMaximaGrafica*1/4), width-width*0.48, height*(0.05+(5*0.45/8)));
        line(width-width*0.45, height*(0.05+(5*0.45/8)), width, height*(0.05+(5*0.45/8)));

        text(String.format("%.2f",(float)-velocidadMaximaGrafica*2/4), width-width*0.48, height*(0.05+(6*0.45/8)));
        line(width-width*0.45, height*(0.05+(6*0.45/8)), width, height*(0.05+(6*0.45/8)));

        text(String.format("%.2f",(float)-velocidadMaximaGrafica*3/4), width-width*0.48, height*(0.05+(7*0.45/8)));
        line(width-width*0.45, height*(0.05+(7*0.45/8)), width, height*(0.05+(7*0.45/8)));

        text(String.format("%.2f",(float)-velocidadMaximaGrafica), width-width*0.48, height*(0.05+(8*0.45/8)));
        line(width-width*0.45, height*(0.05+(8*0.45/8)), width, height*(0.05+(8*0.45/8)));
        fill(0);
        text("T", width-width*0.495, height*(0.05+(8*0.45/8)));

        text(String.format("%.2f",(float)aceleracionMaxima), width-width*0.98, height*0.55);
        line(width-width*0.95, (height*0.55), width-width*0.5, (height*0.55));

        text(""+((int)aceleracionMaxima*3/4), width-width*0.98, height*(0.55+(1*0.45/8)));
        line(width-width*0.95, height*(0.55+(1*0.45/8)), width-width*0.5, height*(0.55+(1*0.45/8)));

        text(String.format("%.2f",(float)aceleracionMaxima*2/4), width-width*0.98, height*(0.55+(2*0.45/8)));
        line(width-width*0.95, height*(0.55+(2*0.45/8)), width-width*0.5, height*(0.55+(2*0.45/8)));

        text(String.format("%.2f",(float)aceleracionMaxima*1/4), width-width*0.98, height*(0.55+(3*0.45/8)));
        line(width-width*0.95, height*(0.55+(3*0.45/8)), width-width*0.5, height*(0.55+(3*0.45/8)));

        text(String.format("%.2f",(float)0), width-width*0.98, height*(0.55+(4*0.45/8)));
        line(width-width*0.95, height*(0.55+(4*0.45/8)), width-width*0.5, height*(0.55+(4*0.45/8)));

        text(String.format("%.2f",(float)aceleracionMaxima*-1/4), width-width*0.98, height*(0.55+(5*0.45/8)));
        line(width-width*0.95, height*(0.55+(5*0.45/8)), width-width*0.5, height*(0.55+(5*0.45/8)));

        text(String.format("%.2f",(float)aceleracionMaxima*2/-4), width-width*0.98, height*(0.55+(6*0.45/8)));
        line(width-width*0.95, height*(0.55+(6*0.45/8)), width-width*0.5, height*(0.55+(6*0.45/8)));

        text(String.format("%.2f",(float)aceleracionMaxima*-3/4), width-width*0.98, height*(0.55+(7*0.45/8)));
        line(width-width*0.95, height*(0.55+(7*0.45/8)), width-width*0.5, height*(0.55+(7*0.45/8)));

        text(String.format("%.2f",(float)-aceleracionMaxima), width-width*0.98, height*(0.55+(8*0.45/8)));
        line(width-width*0.95, height*(0.55+(8*0.45/8)), width-width*0.5, height*(0.55+(8*0.45/8)));
        fill(0);
        text("T", width-width*0.495, height*(0.55+(8*0.45/8)));    

        fill(250);
      } else {
        background(150);
        rect(width-width*0.95, height*0.05, width-width*0.5, height*0.50);//Posicion
        rect(width-width*0.45, height*0.05, width, height*0.50);//velocidad 
        rect(width-width*0.95, height*0.55, width-width*0.5, height);//aceleracion
      }
      P++;
    }
    if (muerte) {
      textSize(50);
      
      
      image(muertes[num_muerte],0,0,width,height  );
      
    }
    text("presiona R ", width-width*0.25, height*0.75 );
    textSize(50);
    break;
  }
}

void keyPressed() {
  if (key==ENTER&&caso==0) {
    caso=1;
  } else if ((key == 'j' || key == 'J') && (caso==2||caso==3)) {
    caso = 3;
    inicio=true;
    R=1;
    
    //seguir = true;
  } else if (key == 'c' || key == 'C' && caso==3) {
    if (!camara) {
      camara=true;
    } else {
      camara=false;
    }
  }
  if ((keyCode == 'A' || keyCode == 'a') && multiplicadortiempo<5 && caso==3) {
    multiplicadortiempo++;
  } else if ((keyCode == 'D' || keyCode == 'd')&& multiplicadortiempo>1 && caso==3) {
    multiplicadortiempo--;
  }
  if ((key == 'R' || key == 'r' )&& (caso==3||caso==4)) {
    inicio=false;
    seguir = true;
    ajuste=true;
    R=0;
    velocidadMaximaGraficaEnVivo=0;
    posicionPersonaje=height-alturaplataforma_pixeles-(alturapersona_pixeles/2);//pocicion inicila de la persona
    tiempoTota=0;
    tiempoMovAmortiguado=0;
    tiempoCaidaLibre=0;
    velocidadMaximaGrafica=0;
    aceleracionMaximaEnVivo=0;
    velocidad=0;
    aceleracion=0;
    caso=1;
    muerte=false;
    coordenada_x_ship=height+523;
    aceleracionMaxima=0;
    coodenada_y_ship=280;
    TgraficaEnVivo=0;
    primeraImagen=0;
    cantidadT=0;
    resistenciaDouble1=resistenciaDouble;
    fill(255);
  }
  if ((key == 'G' || key == 'g')&& R==1 && caso==3) {
    caso=4;
    background(150);
    tiempoActualGrafica=0;
    tiempoAnteriorGrafica=0;
    tiempoGrafica=0;
    yActualGrafica=0;
    yAnteriorGrafica=0;
  }
    if((key == 'o'||key == 'O')&&caso==3){
       movemen+=17;
   }  else if((key == 'l'||key == 'L')&&caso==3){
        movemen-=17;
      }
   
}

void mousePressed() {  

     //DIRECCION DE LA SELECCION DE MASA IZQUIERDA
  if ((mouseX>posx1/2-450 && mouseY>posy1/1.88+180) && (mouseX<posx1/2-450+tempAncho/3 && mouseY<posy1/1.88+180+tempLargo) && (caso==1)) {
    rectMode(CORNERS);
    fill(255);
    rect(posx1/2-450, posy1/2-110, posx1/2-450+tempAncho/3, posy1/2-110+tempLargo);
    if (coefElasticidad1>50) {
      coefElasticidad1-=10;
      coefElasticidad=coefElasticidad1;
    }
  }
  //DIRECCION DE MASA DERECHA
  else if ((mouseX>posx1/2-330 && mouseY>posy1/1.88+180) && (mouseX<posx1/2-330+tempAncho/3 && mouseY<posy1/1.88+180+tempLargo) && (caso==1)) {
    rectMode(CORNERS);
    fill(255);
    rect(posx1/2-330, posy1/2-110, posx1/2-330+tempAncho/3, posy1/2-110+tempLargo);
    if (coefElasticidad1<600) {
      coefElasticidad1+=10;
      coefElasticidad=coefElasticidad1;
    }
  }
  
  //DIRECCION DE LA SELECCION DE MASA IZQUIERDA
  if ((mouseX>posx1/2-450 && mouseY>posy1/2-110) && (mouseX<posx1/2-450+tempAncho/3 && mouseY<posy1/2-110+tempLargo) && (caso==1)) {
    rectMode(CORNERS);
    fill(255);
    rect(posx1/2-450, posy1/2-110, posx1/2-450+tempAncho/3, posy1/2-110+tempLargo);
    if (peso>45) {
      peso--;
      pesoDouble=peso;
    }
  }
  //DIRECCION DE MASA DERECHA
  else if ((mouseX>posx1/2-330 && mouseY>posy1/2-110) && (mouseX<posx1/2-330+tempAncho/3 && mouseY<posy1/2-110+tempLargo) && (caso==1)) {
    rectMode(CORNERS);
    fill(255);
    rect(posx1/2-330, posy1/2-110, posx1/2-330+tempAncho/3, posy1/2-110+tempLargo);
    if (peso<105) {
      peso++;
      pesoDouble=peso;
    }
  }
  //DIRECCION DE ALTURA IZQUIERDA
  else if ((mouseX>posx1/2-450 && mouseY>posy1/2-30) && (mouseX<posx1/2-450+tempAncho/3 && mouseY<posy1/2-30+tempLargo) && (caso==1)) {
    rectMode(CORNERS);
    fill(255);
    rect(posx1/2-450, posy1/2-30, posx1/2-450+tempAncho/3, posy1/2-30+tempLargo);
    if (altura>25) {
      altura--;
      ajustes();
    }
  }
  //DIRECCION DE ALTURA DERECHA
  else if ((mouseX>posx1/2-330 && mouseY>posy1/2-30) && (mouseX<posx1/2-330+tempAncho/3 && mouseY<posy1/2-30+tempLargo) && (caso==1)) {
    rectMode(CORNERS);
    fill(255);
    rect(posx1/2-330, posy1/2-30, posx1/2-330+tempAncho/3, posy1/2-30+tempLargo);
    if (altura<70) {
      altura++;
      ajustes();
    }
  }
  //DIRECCION DE CUERDA IZQUIERDA
  else if ((mouseX>posx1/2-450 && mouseY>posy1/1.88+20) && (mouseX<posx1/2-450+tempAncho/3 && mouseY<posy1/1.88+20+tempLargo) && (caso==1)) {
    rectMode(CORNERS);
    fill(255);
    rect(posx1/2-450, posy1/1.88+20, posx1/2-450+tempAncho/3, posy1/1.88+20+tempLargo);
    if (cuerda>10) {
      cuerda--;
    }
  }
  //DIRECCION DE CUERDA DERECHA
  else if ((mouseX>posx1/2-330 && mouseY>posy1/1.88+20) && (mouseX<posx1/2-330+tempAncho/3 && mouseY<posy1/1.88+20+tempLargo) && (caso==1)) {
    rectMode(CORNERS);
    fill(255);
    rect(posx1/2-330, posy1/1.88+20, posx1/2-330+tempAncho/3, posy1/1.88+20+tempLargo);
    if (cuerda<50) {
      cuerda++;
    }
  }
  //DIRECCION AIRE IZQUIERDA
  else if ((mouseX>posx1/2-450 && mouseY>posy1/1.88+100) && (mouseX<posx1/2-450+tempAncho/3 && mouseY<posy1/1.88+100+tempLargo) && (caso==1)) {
    rectMode(CORNERS);
    fill(255);
    rect(posx1/2-450, posy1/1.88+100, posx1/2-450+tempAncho/3, posy1/1.88+100+tempLargo);
    if (resistenciaDouble>0) {
      resistenciaDouble--;
      resistenciaDouble1=resistenciaDouble;
    }
  } else if ((mouseX>posx1/2-330 && mouseY>posy1/1.88+100) && (mouseX<posx1/2-330+tempAncho/3 && mouseY<posy1/1.88+100+tempLargo) && (caso==1)) {
    rectMode(CORNERS);
    fill(255);
    rect(posx1/2-330, posy1/1.88+100, posx1/2-330+tempAncho/3, posy1/1.88+100+tempLargo);
    if (resistenciaDouble<20) {
      resistenciaDouble++;
      resistenciaDouble1=resistenciaDouble;
    }
  }
  //DIRECCION DE BOTON CAMBIA ESCENARIO IZQUIERDO
  else if ((mouseX>posx1/2+10 && mouseY>posy1/2) && (mouseX<posx1/2+10+60 && mouseY<posy1/2+50) && (caso==1)) {
    rectMode(CORNERS);
    fill(255);
    rect(posx1/2+10, posy1/2, posx1/2+10+60, posy1/2+50);
    if (contador_Mundos>0) {
      contador_Mundos--;
    }
  }
  //DIRECCION DE BOTON CAMBIA ESCENARIO DERECHO
  else if ((mouseX>posx1/2+390 && mouseY>posy1/2) && (mouseX<posx1/2+390+60 && mouseY<posy1/2+50) && (caso==1)) { 
    rectMode(CORNERS);
    fill(255);
    rect(posx1/2+390, posy1/2, posx1/2+390+60, posy1/2+50);
    if (contador_Mundos<2) {
      contador_Mundos++;
    }
  } else if ((mouseX>posx1-250 && mouseY>posy1-180) && (mouseX<posx1-250+110 && mouseY<posy1-180+60) && (caso==1)) {
    rectMode(CORNERS);
    fill(255);
    rect(posx1-250, posy1-180, posx1-250+110, posy1-180+60);
    if(contador_Mundos==0){
          caso=2;

    }else{
      caso=3;
    }
    
  }
}
void ajustes() {
  metros =porcentajePantalla/altura;//combertidor de metros a pixeles
  alturapersona_pixeles=alturaPersonaMetros*metros;//altura de la persona en pixeles
  gruesoPersonaPixeles=gruesoPersona*metros;//ancho de la persona en pixeles
  pixelesCaida=(float)gravedades [contador_Mundos]*metros/100;//pasamos la aceleracion a pixeles la divicion entre 1000 se explica luego
  alturaplataforma_pixeles=altura*metros;//altura ingresada en pixeles
  posicionPersonaje=height-alturaplataforma_pixeles-(alturapersona_pixeles/2);//pocicion inicila de la persona
  alturaEdificioPixeles=imagenAltura*metros;//el tres es una medida estandar para el ancho del lugar de saltos
  anchoedificio=imagenAN*metros;
  anchopublico_pixeles=anchopublico*metros;//se pasa a altura en pixeles
  Pa=alto_publico*metros;
}
