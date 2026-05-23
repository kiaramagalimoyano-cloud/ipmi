/// VARIABLES

int pantalla = 1;

float alphaTexto = 0;
float moverTexto = -100;

void setup() {

  size(640, 480);
}

void draw() {

  background(0);

  // ANIMACIONES

  if (alphaTexto < 255) {
    alphaTexto += 2;
  }

  if (moverTexto < 180) {
    moverTexto += 2;
  }

  // CONDICIONALES

  if (pantalla == 1) {

    pantallaUno();

    if (frameCount > 300) {

      pantalla = 2;

      reiniciarAnimacion();
    }
  }

  else if (pantalla == 2) {

    pantallaDos();

    if (frameCount > 600) {

      pantalla = 3;

      reiniciarAnimacion();
    }
  }

  else if (pantalla == 3) {

    pantallaTres();

    if (frameCount > 900) {

      pantalla = 4;

      reiniciarAnimacion();
    }
  }

  else if (pantalla == 4) {

    pantallaCuatro();

    if (frameCount > 1200) {

      pantalla = 5;

      reiniciarAnimacion();
    }
  }

  else if (pantalla == 5) {

    pantallaCinco();
  }
}

// ------------------------------------------------

void cancha() {

  stroke(255);

  line(width/2, 0, width/2, height);

  fill(255);

  // Jugador izquierda
  rect(30, 170, 15, 100);

  // Jugador derecha
  rect(595, 170, 15, 100);
}

// ------------------------------------------------
// PANTALLA 1
// ------------------------------------------------

void pantallaUno() {

  cancha();

  ellipse(width/2, height/2, 20, 20);

  textSize(50);

  fill(255);

  text("0", 220, 70);

  text("0", 390, 70);

  fill(255, alphaTexto);

  textSize(24);

  text("Los jugadores se preguntan...", 130, moverTexto);

  textSize(30);

  text("¿Quien es el mejor?", 160, moverTexto + 70);
}

// ------------------------------------------------
// PANTALLA 2
// ------------------------------------------------

void pantallaDos() {

  cancha();

  ellipse(500, 250, 20, 20);

  textSize(50);

  fill(255);

  text("2", 220, 70);

  text("0", 390, 70);

  fill(255, alphaTexto);

  textSize(20);

  // Dialogo izquierda
  text("Nunca seras", 60, moverTexto);

  text("mejor que yo", 60, moverTexto + 40);
}

// ------------------------------------------------
// PANTALLA 3
// ------------------------------------------------

void pantallaTres() {

  cancha();

  ellipse(120, 220, 20, 20);

  textSize(50);

  fill(255);

  text("2", 220, 70);

  text("1", 390, 70);

  fill(255, alphaTexto);

  textSize(20);

  // Dialogo derecha
  text("Si uno se propone", 340, moverTexto);

  text("puede hacer", 380, moverTexto + 40);

  text("cosas grandes", 360, moverTexto + 80);
}

// ------------------------------------------------
// PANTALLA 4
// ------------------------------------------------

void pantallaCuatro() {

  cancha();

  ellipse(width/2, 240, 20, 20);

  textSize(50);

  fill(255);

  text("2", 220, 70);

  text("2", 390, 70);

  fill(255, alphaTexto);

  textSize(18);

  // Izquierda
  text("No me sorprende", 40, moverTexto);

  text("que voy a ganar", 40, moverTexto + 40);

  // Derecha
  text("Nadie es", 420, moverTexto + 120);

  text("mejor que nadie", 350, moverTexto + 160);
}

// ------------------------------------------------
// PANTALLA 5
// ------------------------------------------------

void pantallaCinco() {

  cancha();

  ellipse(560, 150, 20, 20);

  textSize(50);

  fill(255);

  text("2", 220, 70);

  text("3", 390, 70);

  fill(255, alphaTexto);

  textSize(20);

  // Derecha
  text("Buen juego", 410, moverTexto);

  text("Jugaste re bien", 340, moverTexto + 40);

  text("Aprendi muchas", 350, moverTexto + 80);

  text("cosas", 430, moverTexto + 120);

  textSize(18);

  text("Click para reiniciar", 200, 440);
}

// ------------------------------------------------

void reiniciarAnimacion() {

  alphaTexto = 0;

  moverTexto = -100;
}

// ------------------------------------------------
// mousePressed
// ------------------------------------------------

void mousePressed() {

  // AND

  if (pantalla == 5 && mousePressed) {

    pantalla = 1;

    frameCount = 0;

    reiniciarAnimacion();
  }
}

// ------------------------------------------------
// mouseClicked
// ------------------------------------------------

void mouseClicked() {

  // OR

  if (mouseButton == LEFT || mouseButton == RIGHT) {

    println("CLICK DETECTADO");
  }
}
