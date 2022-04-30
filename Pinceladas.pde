class Pinceladas {

  int can = 4;
  int c = int(random(can));
  PImage pinceladas[] = new PImage [can];
  Paleta p = new Paleta("obra.jpg");


  Pinceladas() {

    imageMode(CENTER);
    for (int i = 0; i < can; i++) {
      String nombre = "trazo"+nf(i, 2)+".png" ;
      pinceladas[i]= loadImage(nombre);
      pinceladas[i].filter(INVERT);
    }
  }

  void dibujar() {
    push();
    float x = random ( width-10);
    float y = random (height -10);
    for (int i = 0; i < c; i++) {
      int mostrar =int(random (can));
      tint(p.darunColor(), 180);
      scale ( random (0.2, 2));
      image (pinceladas[mostrar], x, y );
    } 
    pop();
    println(x, y);
  }
}
