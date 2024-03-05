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

class ElectricCar extends Car {
  int batteryLife;

  // Constructor to initialize properties including batteryLife
  ElectricCar(String brand, String model, int year, this.batteryLife) : super(brand, model, year);
}

void main() {
  // Instantiate the ElectricCar class
  ElectricCar myElectricCar = ElectricCar('Tesla', 'Model S', 2023, 300);

  // Print the properties of the electric car
  print('Brand: ${myElectricCar.brand}');
  print('Model: ${myElectricCar.model}');
  print('Year: ${myElectricCar.year}');
  print('Battery Life: ${myElectricCar.batteryLife} miles');

  // Call the vroom method
  myElectricCar.vroom();
}
