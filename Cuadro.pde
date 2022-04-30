class Cuadro {
  
  
  Mancha a= new Mancha();
  Pinceladas b = new Pinceladas();
  Garabato c = new Garabato ();

  void dibujar() {
    
    a.dibujar();
    b.dibujar();
    c.mover();
    c.dibujar();
    
  }

  void estado() {
  }
}
