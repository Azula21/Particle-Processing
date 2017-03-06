class Agent {
  float xPos;
  float yPos;

  float xVel;
  float yVel;

  float mass;

  float r;
  float g;
  float b;
  float alpha;

  Agent(float startingX, float startingY) {
    xPos = startingX;
    yPos = startingY;
    xVel = 0;
    yVel = random(-1, 1);

    mass = random(0.1, 0.4);
    r = random(150,255);
    g = random(0, 90);
    b = random(0, 150);

    alpha = map(mass, 0.1, 0.4, 100, 0);
  }

  void update() {
    fill(r, g, b, alpha);

    if (xPos > width) {
      xPos = 0;
    }
    if (xVel < TerminalVelocity) {
      xVel += wind*(mass/2);
    } else {
      xVel += 0;
    }

    xPos += xVel;
    yPos += yVel;

    if (xPos > width) {
      xPos = 0;
      xVel = 0;
    }
  }
  void draw() {
    fill(r, g, b, alpha);
    ellipse(xPos, yPos, random(5,11), mass);
  }
}