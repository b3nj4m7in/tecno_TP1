class PinceladasRosa {

  int can = 4;
  int c = int(random(can));
  PImage pinceladasR[] = new PImage [can];
  Paleta r = new Paleta("rosa.jpg");

  PinceladasRosa() {
    for (int i = 0; i < can; i++) {
      String nombre = "trazo"+nf(i, 2)+".png" ;
      pinceladasR[i]= loadImage(nombre);
      pinceladasR[i].filter(INVERT);
    }
  }

  void dibujar() {
    push();
    grafico4.imageMode(CENTER);

    float xR = random(300, 500);
    float yR= random ( 0, 100 );

    for (int i = 0; i < c; i=+3) {
      int mostrar =int(random (can));
      grafico4.rotate((random(-1, 0.4)));
      grafico4.tint(r.darunColor(), 180);
      grafico4.scale ( random (-2, 2));    
      grafico4.image(pinceladasR[mostrar], xR, yR );
    } 
    pop();
  }
}
