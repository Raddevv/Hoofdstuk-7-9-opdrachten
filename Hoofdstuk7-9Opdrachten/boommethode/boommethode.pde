void setup() {
  size(600, 200);
  background(140,200,255);
  bos(5, 100, 100);
}

void draw() {
}

void bos(int aantalBomen, float startX, float startY) {
  float afstand = 100;
  for (int i = 0; i < aantalBomen; i++) {
    boommethode(startX + i * afstand, startY);
  }
}

void boommethode(float x, float y) {
  fill(0, 128, 0);
  ellipse(x, y - 20, 40, 40);
  
  fill(139, 69, 19);
  rect(x - 10, y, 20, 40);
}
