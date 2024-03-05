import 'dart:async';

void main() {
  print('Start');
  
  // Creating a Future
  Future<int> futureResult = calculateResult();

  // Handling the result using then method
  futureResult.then((result) {
    print('Result: $result');
  }).catchError((error) {
    print('Error occurred: $error');
  }).whenComplete(() {
    print('Future operation completed');
  });
  
  print('End');
}

Future<int> calculateResult() {
  return Future.delayed(Duration(seconds: 2), () {
    // Simulating a long-running asynchronous task
    return 42; // Returning some result
  });
}
