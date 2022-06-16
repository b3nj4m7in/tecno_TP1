class Caminante {

  float x, y;
  float t;
  float vel;
  float dir;

  Caminante() {
    x = width/2.0;
    y = height/2.0;
    t  = 2;
    vel = 2;
    dir = random(360);
  }

  void dibujar() {
    grafico3.noStroke();
    grafico3.fill(0);
    grafico3.ellipse(x, y, t, t);
  }

  void mover() {
    
    dir += 2;
    dir += random(-7, 7);
    x = x+vel*cos(radians(dir));
    y = y+vel*sin(radians(dir));

    if ( x<0 || x>width-0 ) {
      x = x - vel;
    }
    if ( y<0 || y>height-0 ) {
      y = y - vel;
    }
  }


  void cambiarDireccion() {
    dir =  random(0, 360);
  }
}
