class Car {
  String brand;
  String model;
  int year;

  // Constructor to initialize properties
  Car(this.brand, this.model, this.year);

  // Method to print "Vroom Vroom"
  void vroom() {
    print('Vroom Vroom');
  }
}

void main() {
  // Instantiate the Car class
  Car myCar = Car('Toyota', 'Camry', 2022);

  // Print the properties of the car
  print('Brand: ${myCar.brand}');
  print('Model: ${myCar.model}');
  print('Year: ${myCar.year}');

  // Call the vroom method
  myCar.vroom();
}
