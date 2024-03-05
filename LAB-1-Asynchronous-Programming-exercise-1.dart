import 'dart:async';

Future<void> main() async {
  print('Start');
  await waitForSomeTime(); // Wait for the future to complete
  print('End');
}

Future<void> waitForSomeTime() async {
  print('Waiting...');
  await Future.delayed(Duration(seconds: 2)); // Simulating some asynchronous task
  print('Done waiting');
}
