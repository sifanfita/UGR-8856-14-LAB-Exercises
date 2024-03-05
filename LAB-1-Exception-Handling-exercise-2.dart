void main() {
  try {
    someFunction();
  } on CustomException catch (e) {
    print('CustomException caught: ${e.message}');
  }
}

class CustomException implements Exception {
  final String message;

  CustomException(this.message);
}

void someFunction() {
  // Simulating throwing a CustomException
  throw CustomException('Something went wrong!');
}
