Particle[] flock = new Particle[30];

void setup()
{
size(500, 500);
}

void draw()
{
background(110, 180, 235);
for (int i = 0; i < flock.length; i++)
{
if (flock[i] != null)
{
flock[i].move();
flock[i].show();
}
}
}

void mousePressed()
{
flock[0] = new Oddball();
for (int i = 1; i < flock.length; i++)
{
flock[i] = new Particle();
}
}

class Particle
{
double myX, myY, myAngle, mySpeed;
int myColor;

Particle()
{
myX = mouseX;
myY = mouseY;
myAngle = Math.random() * 2 * Math.PI;
mySpeed = 4;
myColor = color(255);
}

void move()
{
myX += Math.cos(myAngle) * mySpeed;
myY += Math.sin(myAngle) * mySpeed;
}

void show()
{
stroke(myColor);
strokeWeight(2);
line((float)myX, (float)myY, (float)myX - 8, (float)myY - 6);
line((float)myX, (float)myY, (float)myX + 8, (float)myY - 6);
}
}

class Oddball extends Particle
{
Oddball()
{
myColor = color(0);
}

void show()
{
stroke(myColor);
strokeWeight(5);
line((float)myX, (float)myY, (float)myX - 25, (float)myY - 18);
line((float)myX, (float)myY, (float)myX + 25, (float)myY - 18);
}
}
