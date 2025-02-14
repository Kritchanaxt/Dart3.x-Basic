void main() {
  // String interpolation $
  String title = "Mouse";
  int price = 400, vat = 10;
  String message = '''\nProduct Name: $title, Price: $price Shipping tax included = ${price + vat} bath\n''';
  print(message);
}