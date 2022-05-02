class Garabato {
  float x, y ;
  float dir, vel ;
  float tam ;
  float an ;

  Garabato() {
    x = random( width/2.0 );
    y = random(  height/2.0 );
    tam = 2 ;
    vel = 2;
    dir = radians(random(360));
  }   

  void dibujar () {
   
    grafico3.fill(0 );
    grafico3.ellipse(x, y, tam, tam);
  }

  void mover () {
    an = radians(random(-4,20));
    dir = dir +an ;

    float dix = - vel * cos(dir);
    float diy = -vel * sin(dir);

    x = x+dix;
    y = y+diy;
  }
}
