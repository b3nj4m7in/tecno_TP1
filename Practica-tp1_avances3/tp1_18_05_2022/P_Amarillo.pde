class PinceladasAmarillo {
  //int Opacidad=200;
  //float inc=0.5;

  int can = 4;
  int c = int(random(can));
  PImage pinceladasA[] = new PImage [can];
  Paleta a = new Paleta("amarillo.jpg");

  PinceladasAmarillo() {
    for (int i = 0; i < can; i++) {
      String nombre = "trazo"+nf(i, 2)+".png" ;
      pinceladasA[i]= loadImage(nombre);
      pinceladasA[i].filter(INVERT);
    }
  }

  void dibujar() {

    //grafico1.imageMode(CENTER);

    float xA = random(width-450, 300  ) ;
    float yA = random(500, 600);


    //if(mousePressed==true){ //boolean para cuando no hay sonido
    //  Opacidad-=inc;
    //}
    push();
    for (int i = 0; i < c; i=+3) {
      int mostrar =int(random (can));
      grafico1.tint(a.darunColor(), 180);
      grafico1.rotate((random(-0.1, 0.2)));     

      //grafico1.scale (random(2, 6));
      grafico1.image (pinceladasA[mostrar], xA, yA );
    }
    pop();
  }
}
