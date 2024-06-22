class Car {
  // Properties
  String brand;
  String model;
  int year;
  double milesDriven;
  
  // Static property to keep track of the number of Car objects created
  static int numberOfCars = 0;

  // Constructor
  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  // Method to add miles driven
  void drive(double miles) {
    milesDriven += miles;
  }

  // Getters
  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  // Method to calculate the age of the car
  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  // Create three Car objects
  Car car1 = Car("Toyota", "Camry", 2015, 50000.0);
  Car car2 = Car("Honda", "Civic", 2018, 30000.0);
  Car car3 = Car("Ford", "Mustang", 2020, 10000.0);
  
  // Drive each car a different number of miles
  car1.drive(150.0);
  car2.drive(200.0);
  car3.drive(300.0);
  
  // Print out the details of each car
  List<Car> cars = [car1, car2, car3];
  for (Car car in cars) {
    print("Brand: ${car.getBrand()}");
    print("Model: ${car.getModel()}");
    print("Year: ${car.getYear()}");
    print("Miles Driven: ${car.getMilesDriven()}");
    print("Age: ${car.getAge()} years");
    print("");  // New line for better readability
  }
  
  // Print out the total number of Car objects created
  print("Total number of cars created: ${Car.numberOfCars}");
}
