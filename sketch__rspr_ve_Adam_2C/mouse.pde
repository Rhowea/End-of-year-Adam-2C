class Mouse {
  int posX = 400, posY = 400, shapeX = 0, shapeY = 0, shapeWidth = 50, shapeHeight = 100;
  float turnTarget; 
  float rotateY; 
  float rotateX;
  boolean moving = false;
  void appear() {
    rectMode(CENTER);
    pushMatrix();
    translate(posX, posY);
    rotate(turnTarget);
    rect(shapeX, shapeY, shapeWidth, shapeHeight);
    rect(shapeX, shapeY - 50, shapeWidth, 50);
    circle(shapeX - 10, shapeY - 60, 10);
    circle(shapeX + 10, shapeY - 60, 10);
    fill(255, 0, 0);
    fill(255);
    move();
    popMatrix();
  }
  void turn() {
    rotateY = cheeses.get(0).posy - posY;
    rotateX = cheeses.get(0).posx - posX;
    if (rotateY > 0) {
      turnTarget = PI - atan(rotateX/rotateY);
      moving = true;
    } else if (rotateY < 0) {
      if (rotateY != 0) {
        turnTarget = - atan((rotateX)/rotateY);
        moving = true;
      }
    } else if (rotateX < 0) {
      turnTarget = 270 * PI/180;
      moving = true;
    } else if (rotateX > 0) {
      turnTarget = 90 * PI/180;
      moving = true;
    } else if (rotateX == 0) {
      moving = true;
      println("nom");
    }
  }

  void move() {
    if (moving == true) {
      shapeY = shapeY - 5;
      println(shapeY, sqrt(rotateY * rotateY + rotateX * rotateX));
      if (abs(shapeY) >= sqrt(rotateY * rotateY + rotateX * rotateX)) {
        moving = false;
        posX = cheeses.get(0).posx;
        posY = cheeses.get(0).posy;
        turnTarget = 0;
        shapeY = 0;
        cheeses.remove(0);
      }
    }
  }
}
