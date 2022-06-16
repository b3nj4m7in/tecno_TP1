class Mancha {
  PImage mancha1 ;
  PImage mancha2;
  PImage m = loadImage("trazo.png");
  int c = int(random(10, 16));
  float x[] = new float [c];
  float y [] = new float [c];
  float tamW [] = new float[c];
  float tamH [] = new float [c];
  float vida = 0; 
  float resta = 10;



  Mancha() {
    for (int i = 0; i < c; i++) {
      mancha1 =loadImage("mancha00.png");
      mancha2 =loadImage("mancha01.png");
      mancha2.filter(INVERT);
      mancha1.filter(INVERT);
      mancha1.resize(20, 20 );
      mancha2.resize(10, 10 );
      x [i] = random(width/2, width-20);
      y [i]= random(height/2, height-20);
      tamW[i] = random(10, 15);
      tamH [i]= random(20, 28);
    }
  }

  void dibujar() {
    for (int i = 0; i < 10; i++) {
      grafico2.noStroke();
   
      grafico2.tint(3, 179, 212, vida+5);
      grafico2.imageMode(CORNER);
      grafico2.image(mancha1, x[i], y[i] );
   
    
      grafico2.tint(255, 255, 255, vida+10);
      grafico2.imageMode(CENTER);
      grafico2.image(mancha2, x[i]+5, y[i]+5);
    
    }
  }

  void cambio() {
    vida-= 2;
  }

  void actualizar() {
    vida += 2;
  }

  boolean estaVivo() {
    if (vida <= 255) {
      return true;
    } else {
      return false;
    }
  }

  void PinceladasNegras() {


    for (int i = 0; i < 5; i++) {
      m.resize(700, 300);
      grafico5.imageMode(CENTER);
      grafico5.translate(width/2, height/2);
      float f = 150;
      float x1 = random(1, 300);
      float y1 = random(150, 700);
      grafico5.rotate(100);
      //grafico5.scale ( random (-2, 1));

      grafico5.tint(#454C7C, f);
      grafico5.image(m, x1, y1);
    }
   
  }
}
