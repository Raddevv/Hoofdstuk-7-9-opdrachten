int cijfer = -1;

void setup() {
  size(400, 400);
  println("Voer een cijfer in door op een toets te drukken (1-10):");
  textSize(20);
}

void draw() {
  background(255, 255, 255);
  fill(0, 0, 0);
  
  if (isValidCijfer(cijfer)) {
    String beoordeling = beoordeelCijfer(cijfer);
    text("Ingevoerd cijfer: " + cijfer, 20, 60);
    text(beoordeling, 20, 100);
  } else {
    text("Voer een geldig cijfer in (1-10).", 20, 60);
  }
}

boolean isValidCijfer(int cijfer) {
  return cijfer >= 1 && cijfer <= 10;
}

String beoordeelCijfer(int cijfer) {
  switch (cijfer) {
    case 1:
    case 2:
    case 3:
      return "Slecht";
    case 4:
      return "Onvoldoende";
    case 5:
      return "Matig";
    case 6:
    case 7:
      return "Voldoende";
    case 8:
    case 9:
    case 10:
      return "Goed";
    default:
      return "Verkeerd cijfer ingevoerd";
  }
}

void keyPressed() {
  if (key >= '0' && key <= '9') {
    cijfer = int(key) - '0';
  } else {
    cijfer = -1;
  }
}
