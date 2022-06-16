class Amarilla {
  OscP5 osc;
  GestorSenial gestorAmp, gestorPitch;
  Mancha m;
  Caminante g;
  PinceladasRosa r;
  PinceladasOtro o;


  // Variables de calibración 
  float minAmp = 50;  // Elimina el ruido de fondo.
  float maxAmp = 70; // Sonidos más fuertes.

  float minPitch = 50; // Sonidos graves
  float maxPitch = 85; // Sonidos agudos

  float amort = 0.7; // Factor de amortiguación.
  boolean verGestores = false;

  // Valores por defecto 
  float amp = 0.0;  // Volumen (Altos - bajos)
  float pitch = 0.0;// Altura  (Graves - agudos)


  //////////////////////////////////////////////////////

  PImage pinceladasA ;

  float vel1 = 10 ;
  float rot = -7;

  Amarilla() {

    m = new  Mancha();
    g = new  Caminante();
    r = new  PinceladasRosa();
    o = new  PinceladasOtro();


    for (int i = 0; i < 10; i++) {

      String nombre = "mancha_amarilla.png" ;
      pinceladasA= loadImage(nombre);
      pinceladasA.filter(INVERT);
      pinceladasA.resize(650, 650);
    }

    gestorAmp = new GestorSenial(minAmp, maxAmp, amort);
    gestorPitch = new GestorSenial(minPitch, maxPitch, amort);
    osc = new OscP5(this, 12345);
  }

  ///////////MANCHAS AZULES///////////////////

  void dibujarM() {

    grafico2.beginDraw(); 
    grafico5.beginDraw(); 

    m.dibujar();
    m.actualizar();
    m.PinceladasNegras();

    if (pitch >= 80) {
      m.cambio();
    }


    grafico5.endDraw();
    grafico2.endDraw();
  }

  //////////////  GARABATO  //////////////////////

  void dibujarG() {
    grafico3.beginDraw();

    if (amp<=minAmp) {
      g.mover();
      g.dibujar();
      grafico3.endDraw();
    }
  }


  ///////////// MACHA AMARILLA ////////////////////////

  float xA = random( 0, 300);
  float yA = random( 100, 300);
  void dibujarA() {


    gestorAmp.actualizar(amp);
    gestorPitch.actualizar(pitch);



    grafico1.beginDraw(); 

    grafico1.translate(0, 450 );


    grafico1.imageMode(CENTER);
    grafico1.rotate(rot);
    grafico1.tint(#DFEA6B, 180 );
    grafico1.image (pinceladasA, xA, yA );




    if (pitch >= 80) {
      g.cambiarDireccion();
      xA = xA+vel1 ;
    }



    grafico1.endDraw();





    // Gestores --------------------------------------------------->
    if (verGestores) {
      gestorAmp.imprimir(0, 0);
      gestorPitch.imprimir(0, 100);
    }
  }

  /////////////////// MANCHA ROSA ////////////////////////  

  void dibujarR() {
    grafico4.beginDraw();

    r.dibujar();

    grafico4.endDraw();
  }
  //////////////////// OTRAS MANCHAS /////////////////////
  
  void dibujarO() {
    grafico6.beginDraw();
    o.dibujar();
    grafico6.endDraw();
  }









  void oscEvent(OscMessage m) {
    if (m.addrPattern().equals("/amp")) {
      amp = m.get(0).floatValue();
      println("amp: "+ amp);
    }
    if (m.addrPattern().equals("/pitch")) {
      pitch = m.get(0).floatValue();
      println("pitch:"+ pitch);
    }
  }
}
