void setup()
{
   size(800, 600);
   background(120);
   loadData();
}

void loadData()
{
   Table table = loadTable("cafe.csv", "header");
   for(TableRow row:table.rows())
   {
     Product prod1 = new Product(row);
     products.add(prod1);
   }
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void draw()
{
  
}