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
  text("Total:                            €0.00", 580, 500);
  
}

void draw()
{
  stroke(0);
  line(400, 50, 400, 580);
  displayProducts();
  displayBill();
 
}