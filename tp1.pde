/*
  Nayla Belen Aguilar 
 Abril Moreira Martinez
 Benjamin Almeida
 
 Comision Lisandro
 */


PGraphics grafico1; //pinceladas//
PGraphics grafico2; //MACHAS AZULES//
PGraphics grafico3; //GARABATO//
Cuadro c;


void setup() { 
  size(500, 700);

  grafico1 = createGraphics( 500, 700 );
  grafico2 = createGraphics( 500 , 700 );
  grafico3 = createGraphics( 500 , 700 );
  c = new Cuadro();
  background(255);
}

void draw() {
  c.dibujarCuadro();
  image(grafico1 , 0, 0  );
  image (grafico2 , 0 , 0);
  image(grafico3 , 0 , 0 );
}
