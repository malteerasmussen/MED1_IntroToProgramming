//int r=100;

flower myFlower1 = new flower(20,5,30,200,(#5B981A)/2);
flower myFlower2 = new flower(50,10,200,150,#FFEA46);
flower myFlower3 = new flower(40,12,500,300,#FAD9F1);



void setup() {
  size(600,400);

}

void draw(){
  background(#43AF76);
  myFlower1.display();
  myFlower2.display();
  myFlower3.display();
  myFlower1.move();
  myFlower2.move();
  myFlower3.move();
  myFlower1.bounce();
  myFlower2.bounce();
  myFlower3.bounce();
}  
