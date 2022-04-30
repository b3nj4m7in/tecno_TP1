class Mancha{
  //ROTAR en el png
   int c = int(random(10,16));
   float x[] = new float [c];
   float y [] = new float [c];
   float tamW [] = new float[c];
   float tamH [] = new float [c];
   int num = 0;
   
   Mancha(){
     for(int i = 0; i < c; i++){
     x [i] = random(width/2,width-20);
     y [i]= random(height/2,height-20);
     tamW[i] = random(10,15);
     tamH [i]= random(20,28);
     }
   }
   
   void dibujar(){
   for(int i = 0; i < 10; i++){
     noStroke();
     push();
     fill(#03b3d4);
     rectMode(CORNER);
     rect(x[i],y[i],tamW[i],tamH[i]);
     pop();
     push();
     fill(255);
     rectMode(CENTER);
     rect(x[i]+5,y[i]+5,tamW[i]-3,tamH[i]-9);
     pop();
   }
   println(c);
   }
}
