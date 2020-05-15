ArrayList<Cheese> cheeses = new ArrayList<Cheese>();
Mouse mouse = new Mouse();
void setup() {
  size(800, 800);
}

void draw() {
  clear();
  background(170);
  if (cheeses.size() > 0) {
    for (int i = cheeses.size() - 1; i >= 0; i--) {
      cheeses.get(i).appear();
    }
  }
  mouse.appear();
  if (cheeses.size() > 0 ) {
    mouse.turn();
  }
}

void mousePressed() {
  Cheese cheese = new Cheese();
  cheese.setPosition(mouseX, mouseY);
  println(mouseX, mouseY);
  cheeses.add(cheese);
}
