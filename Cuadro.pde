class Cuadro { 
  boolean sedibuja  = false; //pinceladas//

  Mancha a= new Mancha();
  Pinceladas b = new Pinceladas();
  Garabato c = new Garabato ();



  void dibujarCuadro() { 
    //////////////////
    grafico1.beginDraw();

    if (  mouseX  > 400  == true ) {
      
      
      b.dibujar();
    }
    grafico1.endDraw();
    /////////////////// 

    grafico2.beginDraw();
    a.dibujar();
    grafico2.endDraw();
    grafico3.beginDraw();
    c.dibujar();
    c.mover();
    grafico3.endDraw();
  }
}
