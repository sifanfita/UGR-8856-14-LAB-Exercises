void printMap(Map<dynamic, dynamic> map) {
  map.forEach((key, value) {
    print("Key: $key, Value: $value");
  });
}

void main() {
  // Example usage:
  Map<String, int> myMap = {
    'apple': 5,
    'banana': 10,
    'orange': 8,
  };
  
  printMap(myMap);
}
