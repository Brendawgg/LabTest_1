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
  for(Product prod1:products)
  {
    float x = 0;
    float y =0;
    stroke(200);
    rect(40, 60 ,320, 80);
    
  }
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void draw()
{
  stroke(0);
  line(400, 20, 400, 580);
  displayProducts();
}