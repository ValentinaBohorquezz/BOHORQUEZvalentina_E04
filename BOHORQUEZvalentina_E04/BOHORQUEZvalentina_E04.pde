// Reloj Semilla
// Valentina Bohorquez
// 202213422

// Este reloj fue inspirado en la idea de representar el tiempo como algo vivo, mas no como cifras simples, haciendo la simulacion de el crecimiento de una planta, donde cada parte avanza de 
// forma ciclica reflejando como organizamos nuestras vidas con precision, pero sin pausa. A la hora de relacionarlo con la lectura de Judy Wajman, esta se relaciona al mostrar omo el tiempo digital organiza 
// nuestra vida de forma precisa pero disimulada, bajo una apariencia natural.

// ahora, primero se define el tamano, se actualiza cada vez por segundo, se deja sin bordes, y los ciruclos se dibujan desde el centro
void setup() {
  size(600, 600);
  frameRate(1); 
  noStroke();
  ellipseMode(CENTER);
}

// se define el fondo
void draw() {
  background(0);
  
// se definen las variables, en la cual van a capturar la hora, el minuto y el segundo actual 
  int h = hour();
  int m = minute();
  int s = second();

// creara que se meuva el origen al cetro, simulando el corazon de una planta o su punto de crecimiento 
  translate(width/2, height/2); // centro del lienzo

// se define la hora, por medio de circulos, como anillos de crecimiento, en el cual cada hora genera un circulo mas grande que el anterior 
// representnado el crecimiento acumulativo de la planta a lo largo del dia, haciendo que tambien cambien los colores cada hora
  for (int i = 0; i < h; i++) {
    fill((i * 10) % 255, 100, 150);
    ellipse(0, 0, i * 20, i * 20);
  }

// se definen los minutos, por medio de circulos que representan los petalos distribuidos que rodean el circulo, en el cual se distribuyen con si fuera una flor en crecimiento
  for (int i = 0; i < m; i++) {
    float angle = TWO_PI / m * i;
    float x = cos(angle) * 150;
    float y = sin(angle) * 150;
    fill(100, 200, 255, 150);
    ellipse(x, y, 15, 15);
  }

// se definen los segundos, la cual es la parte giratoria imitando el polen en movimiento
  float angle = TWO_PI / 60 * s;
  float px = cos(angle) * 200;
  float py = sin(angle) * 200;
  fill(255, 255, 0);
  ellipse(px, py, 20, 20);
}
