/*
 | TP1 | Tmm2 | FdA | UNLP |
 ------- TP1 Etapa 4: Entrega Final -------
 Comision: Lisandro | Prof.Lisandro Peralta
 Alumno Almeida Benja(88271/9).
 Video: https:
 */


import oscP5.*;
PGraphics grafico1; //Pinceladas Amarillas//
PGraphics grafico2; //MACHAS AZULES//
PGraphics grafico3; //GARABATO//
PGraphics grafico4; //Pinceladas Rosas//
PGraphics grafico5; //Pinceladas Negras//
PGraphics grafico6; //Otras Pinceladas //
Amarilla a;

void setup() {

  size(700, 700 );
  


  grafico1 = createGraphics( 700, 700 );
  grafico2 = createGraphics( 700, 700 );
  grafico3 = createGraphics( 700, 700 );
  grafico4 = createGraphics( 700, 700 );
  grafico5 = createGraphics( 700, 700 );
  grafico6 = createGraphics( 700, 700 );
  a = new Amarilla();
}


void draw () {
  background(#B9C2F5);
  
  a.dibujarM();
  a.dibujarG();
  a.dibujarO();
  a.dibujarA();
  a.dibujarR();
  
  
  image(grafico5, 0, 0);
  image(grafico6, 0, 0);
  image(grafico4, 0, 0);
  image(grafico1, 0, 0);
  image(grafico3, 0, 0);
  image(grafico2, 0, 0);
}
