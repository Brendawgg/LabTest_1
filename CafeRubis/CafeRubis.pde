ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();
float total = 0;

void setup()
{
   size(800, 600);
   background(120);
   loadData();
   printProducts();
}

void loadData()
{
   Table table = loadTable("cafe.csv", "header");
   for(TableRow row:table.rows())
   {
     Product prod = new Product(row);
     products.add(prod);
   }
}

void printProducts()
{
  for(Product prod:products)
  {
    println(prod);
  }
}

void displayProducts()
{
  for(Product prod:products)
  {
    float x = 0;
    float y =0;
    fill(250);
    stroke(200);
    rect(40, 60 ,320, 80);
    rect(40, 150, 320, 80);
    rect(40, 240, 320, 80);
    rect(40, 330, 320, 80);
    rect(40, 420, 320, 80);
    textSize(16);
    fill(0); textAlign(LEFT);
    text("Americano                 €2.50", 100, 100);
    text("Cappuccino                €2.80", 100, 190);
    text("Latte                          €2.80", 100, 280);
    text("Roibois Tea               €2.90", 100, 380);
    text("Chardonay                 €6.50", 100, 460);
    
    
  }
}

void displayBill()
{
  fill(250);
  rect(440, 60, 300, 480);
  Product bill = products.get(0);
  textAlign(CENTER);
  textSize(40);
  fill(0);
  text("Cafe Rubis Till System", 400, 40);
  textSize(18);
  text("Your Bill", 590, 90);
  text("Total:                      €", 580, 500);
  text(total, 700, 500);
  
}

void mousePressed()
{
  if(mouseX < 360 && mouseX > 40 && mouseY < 140 && mouseY > 60)
  {
      total = total + 2.5;
  }
  
  if(mouseX < 360 && mouseX > 40 && mouseY < 230 && mouseY > 150)
  {
      total = total + 2.8;
  }
  
  if(mouseX < 360 && mouseX > 40 && mouseY < 320 && mouseY > 240)
  {
      total = total + 2.8;
  }
  
  if(mouseX < 360 && mouseX > 40 && mouseY < 410 && mouseY > 330)
  {
      total = total + 2.9;
  }
  
  if(mouseX < 360 && mouseX > 40 && mouseY < 500 && mouseY > 420)
  {
      total = total + 6.5;
  }
}

void draw()
{
  stroke(0);
  line(400, 50, 400, 580);
  displayProducts();
  displayBill();
  // println(mouseX);
  //println(mouseY);
 
}