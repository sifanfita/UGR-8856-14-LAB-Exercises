void main() {
  // Define variables to store the first two numbers of the Fibonacci sequence
  int first = 0;
  int second = 1;

  // Print the first two numbers (0 and 1) of the Fibonacci sequence
  print(first);
  print(second);

  // Loop to generate and print the next 8 numbers in the Fibonacci sequence
  for (int i = 2; i < 10; i++) {
    int next = first + second; // Calculate the next Fibonacci number
    print(next); // Print the next Fibonacci number
    first = second; // Update the value of the first number
    second = next; // Update the value of the second number
  }
}
