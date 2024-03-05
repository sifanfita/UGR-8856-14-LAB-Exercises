List<T> removeDuplicates<T>(List<T> list) {
  List<T> result = [];

  for (T element in list) {
    if (!result.contains(element)) {
      result.add(element);
    }
  }

  return result;
}

void main() {
  // Example usage:
  List<int> numbersWithDuplicates = [1, 2, 3, 2, 4, 5, 3, 6];
  List<int> numbersWithoutDuplicates = removeDuplicates(numbersWithDuplicates);

  print("List with duplicates: $numbersWithDuplicates");
  print("List without duplicates: $numbersWithoutDuplicates");
}
