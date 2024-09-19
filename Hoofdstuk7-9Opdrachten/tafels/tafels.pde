int tafel = 3;

  size(400, 400);
  textSize(19);
  fill(0);

{
  background(220,220,220);
  fill(77,77,77);
  rect(15,0,5,400);
  
  int x = 40;
  int y = 35;
  
  for (int i = 1; i <= 10; i++) {
    int antwoord = i * tafel;
    String regel = i + " x " + tafel + " = " + antwoord;
    text(regel, x, y);
    y += 35;
  }
}
