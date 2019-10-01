import static java.awt.event.KeyEvent.*;

// SECTION:  Setup and Data
String   document;                //  All text saved here
String[] documentSplit;           //  Split doccument saved here
int      fontSize  = 20;          //  Saved in px
color    fontColor = color(255);  //  Default color white
void setup () {
  size(800, 600, P2D);
  noSmooth();
  frame.setResizable(true);
  background(0);
  document = "";
}


// SECTION:  Keyboard Handling
void keyPressed(){
  if (key == BACKSPACE && document.length()!=0) document = document.substring(0, document.length()-1);
  if (key == ENTER || key == RETURN) document += "\n";
}

void keyReleased() {
}

void keyTyped() {
  document+=key;
  // println(document, key);
}


// SECTION:  Draw
int tx;
int ty;
void textDraw() {
  documentSplit = document.split(" ");
  fill(fontColor);
  textSize(fontSize);
  int tx = 0;
  int ty = fontSize / 2;
  
  for (String str : documentSplit) {
    if (str.length()!=0){
      if (tx + textWidth(str)*fontSize/2 > width){
        ty += fontSize / 2;
      }
      if (str.charAt(str.length()-1) == '\n') {
        // TODO
      }
    }
  }
}

void draw() {
  background(0);
  textDraw();
}
