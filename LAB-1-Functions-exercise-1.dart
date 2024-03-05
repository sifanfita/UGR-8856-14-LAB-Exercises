double calculateAverage(List<double> numbers) {
  if (numbers.isEmpty) {
    return 0; // Return 0 if the list is empty to avoid division by zero
  }
  
  double sum = 0;
  for (double number in numbers) {
    sum += number;
  }
  
  return sum / numbers.length;
}

void main() {
  // Example usage:
  List<double> numbers = [5, 10, 15, 20, 25];
  double average = calculateAverage(numbers);
  print("The average of the numbers is: $average");
}
