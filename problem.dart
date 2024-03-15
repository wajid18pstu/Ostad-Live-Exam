void main() {

  List<Map<String, dynamic>> fruits = 
  [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0}
  ];

  displayFruitDetails(fruits);

  double discountPercentage = 10.0;
  applyPriceDiscount(fruits, discountPercentage);

  print('Fruit Details After Applying ${discountPercentage}% Discount:');
  
  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price'].toStringAsFixed(2)}');
  }
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {

  print('Original Fruit Details before Discount:');

  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {

  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountedPrice = originalPrice * (1 - discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}
