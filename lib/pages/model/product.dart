class Product {
  int code;
  String name;
  double price;
  double discount;

  Product({this.code, this.discount = 0, this.name, this.price});
  double get getPriceWithDiscount {
    return (1 - discount) * price;
  }
}
