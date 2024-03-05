void main() {
  try {
    someFunction();
  } catch (e) {
    print('Exception caught: $e');
  } finally {
    print('Finally block executed');
  }
}

void someFunction() {
  // Simulating an error condition
  throw Exception('Something went wrong!');
}
