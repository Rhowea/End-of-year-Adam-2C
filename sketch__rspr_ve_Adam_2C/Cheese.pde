class Cheese {
  int posx, posy;
  void setPosition(int x, int y) {
    posx = x;
    posy = y;
  }
  void appear() {
    fill(255, 255, 0);
    circle(posx, posy, 25);
    fill(255, 255, 255);
  }
}
