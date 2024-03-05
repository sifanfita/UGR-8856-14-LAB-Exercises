void main() {
  try {
    someFunction();
  } catch (e) {
    print('Exception caught: $e');
  }
}

void someFunction() {
  // Simulating an error condition
  throw Exception('Something went wrong!');
}
