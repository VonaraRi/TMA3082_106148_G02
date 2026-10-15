import 'dart:io';

void main() {
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  String? inputSize;
  int pricePerPizza = 0;

  while (true) {
    print('Please enter your pizza size (small, medium, or large): ');
    inputSize = stdin.readLineSync();

    switch (inputSize) {
      case 'small':
        pricePerPizza = 5;
        break;
      case 'medium':
        pricePerPizza = 7;
        break;
      case 'large':
        pricePerPizza = 10;
        break;
      default:
        print('Invalid pizza size entered. Please try again.\n');
        continue;
    }
    
    break;
  }

  int quantity = 0;

  while (true) {
    print ('How many pizzas do you want of $inputSize size?');
    quantity = int.parse(stdin.readLineSync()!); 

    if (quantity <= 0) {
      print('Invalid quantity entered. Please enter a positive number.\n');
      continue;
    }
    break;
  }

  int totalPayment = pricePerPizza * quantity;

  print('Your Total payment: \$$totalPayment');
}