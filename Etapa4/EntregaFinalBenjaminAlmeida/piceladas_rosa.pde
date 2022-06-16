class PinceladasRosa {

  PImage pinceladasR;

  int c = int(random(10, 16));
  float xR ;
  float yR ;

  PinceladasRosa() {
    for (int i = 0; i < c; i++) {
      String nombre = "mancha_rosa.png" ;
      pinceladasR = loadImage(nombre);
      pinceladasR.filter(INVERT);
      pinceladasR.resize(650, 650);
      xR = random(0, 300);
      yR= random ( 100, height/2 );
    }
  }

  void dibujar() {

    push();

    grafico4.translate(width/2, 0);

    grafico4.imageMode(CENTER);

    grafico4.rotate(-7);

    grafico4.tint(#FF9DE3, 126);

    grafico4.image(pinceladasR, xR, yR);

    pop();
  }
}
