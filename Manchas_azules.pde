class Mancha {
  //ROTAR en el png
  int c = int(random(10, 16));
  float x[] = new float [c];
  float y [] = new float [c];
  float tamW [] = new float[c];
  float tamH [] = new float [c];


  Mancha() {
    for (int i = 0; i < c; i++) {
      x [i] = random(width/2, width-20);
      y [i]= random(height/2, height-20);
      tamW[i] = random(10, 15);
      tamH [i]= random(20, 28);
    }
  }

  void dibujar() {

    for (int i = 0; i < 10; i++) {

      grafico2.noStroke();
      push();
      grafico2.fill(#03b3d4);
      grafico2.rectMode(CORNER);
      grafico2.rect(x[i], y[i], tamW[i], tamH[i]);
      pop();
      push();
      grafico2.fill(255);
      grafico2.rectMode(CENTER);
      grafico2.rect(x[i]+5, y[i]+5, tamW[i]-3, tamH[i]-9);
      pop();
    }
    println(c);
  }
}
