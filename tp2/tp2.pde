PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage pantalla4;
PImage pantalla5;
PImage pantalla6;

PFont fuentenuevaimportada;

int miVariable;

int pantalla = 0;

int tiempo;


int x = 220;
int y = 320;
int w = 200;
int h = 80;


int a = 15;
int b = 15;
int c = 120;
int d = 40;

void setup() {

  size(640, 480);

  pantalla1 = loadImage("nakamura.png");
  pantalla2 = loadImage("nakamura1.png");
  pantalla3 = loadImage("nakamura2.png");
  pantalla4 = loadImage("nakamura3.png");
  pantalla5 = loadImage("nakamura4.png");
  pantalla6 = loadImage("nakamura5.png");

  fuentenuevaimportada = createFont("VAG Rounded Regular.ttf", 24);

  textFont(fuentenuevaimportada);
}

void draw() {

  background(0);

  if (pantalla == 0) {

    image(pantalla1, 0, 0, 640, 480);

    botonComenzar();
  }

  else if (pantalla == 1) {

    image(pantalla2, 0, 0, 640, 480);

    miVariable = 600 - ((frameCount - tiempo) / 1);

    if (miVariable < 240) {
      miVariable = 240;
    }

    fill(0, 180);
    rect(70, 180, 500, 120);

    fill(255, 230, 120);

    textSize(24);

    textAlign(CENTER, CENTER);

    text("Go For It, Nakamura! es un anime\n"
      + "de comedia romantica estudiantil\n"
      + "(rom-com) perteneciente al genero\n"
      + "Boys' Love (BL).", 320, miVariable);

    if (frameCount - tiempo > 600) {

      pantalla = 2;

      tiempo = frameCount;
    }
  }

  else if (pantalla == 2) {

    image(pantalla3, 0, 0, 640, 480);

    miVariable = -300 + ((frameCount - tiempo) / 1);

    if (miVariable > 30) {
      miVariable = 30;
    }

    fill(0, 180);
    rect(5, 20, 270, 260);

    fill(255, 230, 120);

    textSize(19);

    textAlign(LEFT);

   text("Okuto Nakamura es un chico\n"
      + "de 15 que se enamora a\n"
      + "primera vista de uno de\n"
      + "sus companeros, Hirose.\n"
      + "Pero hay un problema:\n"
      + "los dos ni siquiera han\n" 
      + " hablado todavia, y\n"
      + "Nakamura es tan torpe y\n"
      + "timido que podria arruinar\n"
      + "todo antes de empezar\n" , miVariable, 50);

    if (frameCount - tiempo > 1200) {

      pantalla = 3;

      tiempo = frameCount;
    }
  }

  else if (pantalla == 3) {

    image(pantalla4, 0, 0, 640, 480);

    miVariable = 500 - ((frameCount - tiempo) / 2 );

    if (miVariable < 317) {
      miVariable = 317;
    }

    fill(255, 255, 255, 180);
    rect(20, 300, 610, 120);

    textSize(19);

    fill(0);

    text("Convencido de querer acercarse a Hirose,\n"
      + "Nakamura comienza a imaginar distintas maneras de ganarse su amistad.\n\n"
      + "Sin embargo, casi todos sus planes terminan con situaciones embarasosas\n"
      + "y momentos ridiculos que solo hacen las cosas mas complicadas.", 28, miVariable);

    if (frameCount - tiempo > 900) {

      pantalla = 4;

      tiempo = frameCount;
    }
  }

  else if (pantalla == 4) {

    image(pantalla5, 0, 0, 640, 480);

    textSize(19);

    fill(255, 255, 255, 180);
    rect(5, 20, 280, 150);

    rect(350, 280, 250, 150);

    fill(0);

   
    int textoIzquierda = -250 + ((frameCount - tiempo) / 1);

    if (textoIzquierda > 9) {
      textoIzquierda = 9;
    }

   text("A medida que pasan los capitulos,\n"
      + "Nakamura comienza a conocer\n"
      + "mejor a Hirose y descubre\n"
      + "que detras de su apariencia\n"
      + "relajada hay alguien amable,\n"
      + "sincero y divertido.", textoIzquierda, 45);
      
    int textoDerecha = 850 - ((frameCount - tiempo) / 1);

    if (textoDerecha < 365) {
      textoDerecha = 365;
    }

    text("Poco a poco,\n"
      + "la distancia entre ambos\n"
      + "empieza a desaparecer,\n"
      + "y Nakamura siente\n"
      + "que finalmente puede\n"
      + "acercarse a el.", textoDerecha, 305);

    if (frameCount - tiempo > 1200) {

      pantalla = 5;

      tiempo = frameCount;
    }
  }

  else if (pantalla == 5) {

    image(pantalla6, 0, 0, 640, 480);

    miVariable = -400 + ((frameCount - tiempo) / 1);
   
    if (miVariable > 80) {
      miVariable = 80;
    }
   
    fill(0, 180);
    rect(40, 240, 560, 170);

    fill(255, 230, 120);

    textSize(18);
    
    textAlign(LEFT);

    text("Go For It, Nakamura! mezcla romance y comedia\n"
      + "para mostrar como pequenos momentos cotidianos\n"
      + "pueden sentirse enormes cuando alguien se enamora.\n\n"
      + "Hay muchas escenas absurdas, momentos incomodos\n"
      + "y situaciones tiernas, donde la historia sigue los\n"
      + "intentos de Nakamura por acercarse a la persona que le gusta.", miVariable, 265);
   
    if (frameCount - tiempo > 1400) {

      botonReiniciar();
    }
  }
}

void botonComenzar() {

  if (mouseX > x && mouseX < x + w &&
    mouseY > y && mouseY < y + h) {

    fill(255, 0, 0);

  } else {

    fill(70, 200, 120);
  }

  rect(x, y, w, h);

  fill(0);

  textSize(24);

  textAlign(CENTER, CENTER);

  text("COMENZAR", x + 100, y + 40);
}

void botonReiniciar() {

  if (mouseX > a && mouseX < a + c &&
    mouseY > b && mouseY < b + d) {

    fill(255, 0, 0);

  } else {

    fill(70, 200, 120);
  }

  rect(a, b, c, d);

  fill(0);

  textSize(16);

  textAlign(CENTER, CENTER);

  text("REINICIAR", a + 60, b + 20);
}

void mousePressed() {


  if (pantalla == 0) {

    if (mouseX > x && mouseX < x + w &&
      mouseY > y && mouseY < y + h) {

      pantalla = 1;

      tiempo = frameCount;
    }
  }
 
  if (pantalla == 5 && frameCount - tiempo > 1500) {

    if (mouseX > a && mouseX < a + c &&
      mouseY > b && mouseY < b + d) {

      pantalla = 0;

      tiempo = frameCount;
    }
  }
}
