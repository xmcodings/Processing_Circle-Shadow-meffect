//Simple Shadow effect on Circle _ Processing
//To download processing, visit processing.org
int circleWidth = 50;

SCircle sc = new SCircle();

void setup()

{
  size(800, 800);
}

void draw()
{
    background(213, 229, 220);
        sc.xcenter = width/2;
        sc.ycenter = height/2;
        if(mousePressed)
        {
          sc.mousepress();
        }
        else
        {
        sc.circleShadow();
        }
        sc.drawCircle(width/2, height/2, circleWidth);
}


class SCircle {

  float xcenter;

  float ycenter;

  int c1,c2,c3, c4;

  int s1,s2,s3,s4 = 60;

  color c_fill = color(125,114,58);

  color shadow = color(s1,s2,s3,s4);

  void drawCircle(float x, float y, float wid)
  {

    stroke(82,74,37);

    fill(c_fill);

    strokeWeight(2);

    circle(x, y, wid);

  }

  void circleShadow()

  {

    float distX = mouseX - xcenter;

    float distY = mouseY - ycenter;

    float angle = atan2(distY, distX);

    float oppositeAngle = angle+PI;

    int linedist = 900;

    stroke(s1,s2,s3,s4);

    float px = xcenter + cos(oppositeAngle) * linedist;

    float py = ycenter + sin(oppositeAngle) * linedist;

    strokeWeight(circleWidth);

    line(xcenter, ycenter, px, py);

  }



  void mousepress()

  {

    float distX = mouseX - xcenter;

    float distY = mouseY - ycenter;

    float angle = atan2(distY, distX);

    float oppositeAngle = angle;

    int linedist = 900;



    stroke(s1,s2,s3,s4);

    float px = xcenter + cos(oppositeAngle) * linedist;

    float py = ycenter + sin(oppositeAngle) * linedist;

    strokeWeight(circleWidth);

    line(xcenter, ycenter, px, py);
  }

}
