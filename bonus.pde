PImage aa, ab, ac, ad, ba, bb, bc, bd, ca, cb, cc, cd;
PImage dr11, dr12, dr13, dr14, dr21, dr22, dr23, dr24, dr31, dr32, dr33, dr34;
PImage start1,start2,end1,drblack;
int x, y, s,k,w;
final int GAME_START = 0, GAME_PLAYING = 1, GAME_LOSE = 2;
int gameState = 0;

void setup() {
  size(640, 480);
  background(0);
  frameRate(1);
  x = 0;
  y = 0;
  s = 160;
  start1 = loadImage("img/start1.jpg");
  start2 = loadImage("img/start2.png");
  drblack = loadImage("img/drblack.png");
  end1 = loadImage("img/end1.jpg");
  aa = loadImage("img/aa.png");
  ab = loadImage("img/ab.png");
  ac = loadImage("img/ac.png");
  ad = loadImage("img/ad.png");
  ba = loadImage("img/ba.png");
  bb = loadImage("img/bb.png");
  bc = loadImage("img/bc.png");
  bd = loadImage("img/bd.png");
  ca = loadImage("img/ca.png");
  cb = loadImage("img/cb.png");
  cc = loadImage("img/cc.png");
  cd = loadImage("img/cd.png");
  dr11 = loadImage("img/dr.png");
  dr12 = loadImage("img/dr.png");
  dr13 = loadImage("img/dr.png");
  dr14 = loadImage("img/dr.png");
  dr21 = loadImage("img/dr.png");
  dr22 = loadImage("img/dr.png");
  dr23 = loadImage("img/dr.png");
  dr24 = loadImage("img/dr.png");
  dr31 = loadImage("img/dr.png");
  dr32 = loadImage("img/dr.png");
  dr33 = loadImage("img/dr.png");
  dr34 = loadImage("img/dr.png");
}
void draw() {
  switch (gameState) {
    case GAME_START:
      image(start1, 0, 0);
      if (mouseY >= 360 && mouseY <= 400 && mouseX >= 160 && mouseX <= 480) {
        image(start2, 0, k);
        k++;
        gameState = GAME_PLAYING;
      }
      break;

    case GAME_PLAYING:
      //background
      image(dr11, x, y);
      image(dr12, x + s, y);
      image(dr13, x + s + s, y);
      image(dr14, x + s + s + s, y);
      image(dr21, x, y + s);
      image(dr22, x + s, y + s);
      image(dr23, x + s + s, y + s);
      image(dr24, x + s + s + s, y + s);
      image(dr31, x, y + s + s);
      image(dr32, x + s, y + s + s);
      image(dr33, x + s + s, y + s + s);
      image(dr34, x + s + s + s, y + s + s);     
        //line one
        if (mouseY >= 0 && mouseY <= 160 && mouseX >= 0 && mouseX <= 160) {
        image(aa,0,0);
        }
         if (mouseY >= 0 && mouseY <= 160 && mouseX >= 160 && mouseX <= 320) {
         image(ab,160,0);
        }
         if (mouseY >= 0 && mouseY <= 160 && mouseX >= 320 && mouseX <= 480) {
        image(ac,320,0);
        gameState = GAME_LOSE;
        }
        if (mouseY >= 160 && mouseY <= 160 && mouseX >= 480 && mouseX <= 640) {
        image(ad,480,0);
        }
        //line two
         if (mouseY >= 160 && mouseY <= 320 && mouseX >= 0 && mouseX <= 160) {
        image(ba,0,160);
        gameState = GAME_LOSE;
        }
         if (mouseY >= 160 && mouseY <= 320 && mouseX >= 160 && mouseX <= 320) {
        image(bb,160,160);
        }
         if (mouseY >= 160 && mouseY <= 320 && mouseX >= 320 && mouseX <= 480) {
        image(bc,320,160);
        }
        if (mouseY >= 160 && mouseY <= 320 && mouseX >= 480 && mouseX <= 640) {
        image(bd,480,160);
        }     
        //line three
         if (mouseY >= 320 && mouseY <= 480 && mouseX >= 0 && mouseX <= 160) {
        image(ca,0,0);
        }
         if (mouseY >= 320 && mouseY <= 480 && mouseX >= 160 && mouseX <= 320) {
        image(bb,160,0);
        }
         if (mouseY >= 320 && mouseY <= 480 && mouseX >= 320 && mouseX <= 480) {
        image(cd,480,0);
        }
        if (mouseY >= 320 && mouseY <= 480 && mouseX >= 480 && mouseX <= 640) {
        image(cc,320,0);
        gameState = GAME_LOSE;
        }
         break;

    case GAME_LOSE:
    image(end1, 0, 0);
      if (mouseY >= 360 && mouseY <= 400 && mouseX >= 160 && mouseX <= 480) {
        image(end1, 0, w);
        w++;
        gameState = GAME_PLAYING;
        break;
      }
  }
}