import 'package:command_test/pages/model/product.dart';
import './product.dart';

class Item {
  Product product;
  int quantity;
  double _price;

  Item({this.product, this.quantity});

  double get price {
    if (product != null && _price == null) {
      _price = product.getPriceWithDiscount;
    }
    return _price;
  }

  void set price(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    }
  }
}
