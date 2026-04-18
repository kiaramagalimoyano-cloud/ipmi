
PImage estructura;

//ejercicio Tp1
// palabras rojas = FUNCIONALES
// palabras azules = VARIABLES

void setup (){  // ejecutar una sola vez el programa/software 
 size ( 800,400 );
 estructura = loadImage ("piramides.jpeg");
}

void draw(){
  background(0);
  image(estructura, 0, 0, 400, 400);

// MITAD DERECHA → fondo cielo
  fill(120, 180, 230);
  rect(width/2, 0, width/2, height);

  // suelo
  fill(237, 201, 175);
  rect(width/2, 300, width/2, 100);

  // pirámide grande
  fill(200, 170, 120);
  triangle(450, 300, 550, 120, 650, 300);

  // pirámide mediana
  triangle(600, 300, 680, 180, 760, 300);

  // pirámide chica
  triangle(700, 300, 740, 220, 780, 300);

// pirámide mini 1
rect(460, 300, 25, 15);
rect(485, 300, 25, 15);
rect(510, 300, 25, 15);

rect(475, 285, 25, 15);
rect(500, 285, 25, 15);

rect(490, 270, 25, 15);

// pirámide mini 2
rect(520, 300, 25, 15);
rect(545, 300, 25, 15);
rect(570, 300, 25, 15);

rect(535, 285, 25, 15);
rect(560, 285, 25, 15);

rect(550, 270, 25, 15);

// pirámide mini 3
rect(580, 300, 25, 15);
rect(605, 300, 25, 15);
rect(630, 300, 25, 15);

rect(595, 285, 25, 15);
rect(620, 285, 25, 15);

rect(610, 270, 25, 15);

}
