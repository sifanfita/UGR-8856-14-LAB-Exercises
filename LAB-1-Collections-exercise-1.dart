int findHighest(List<int> numbers) {
  
  int highest = numbers[0]; // Initialize highest with the first number in the list
  
  for (int number in numbers) {
    if (number > highest) {
      highest = number; // Update highest if the current number is greater
    }
  }
  
  return highest;
}

void main() {
  // Example usage:
  List<int> numbers = [5, 10, 8, 15, 20];
  int highest = findHighest(numbers);
  print("The highest number in the list is: $highest");
}
  
