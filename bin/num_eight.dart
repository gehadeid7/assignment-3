void getDistinctNumbers(List<int> numbers) {
  List<int> distinct = [];

  for (int i = 0; i < numbers.length; i++) {
    bool found = false;

    for (int j = 0; j < distinct.length; j++) {
      if (distinct[j] == numbers[i]) {
        found = true;
        break;
      }
    }

    if (!found) {
      distinct.add(numbers[i]);
    }
  }

  String result = '';

  for (int i = 0; i < distinct.length; i++) {
    result += '${distinct[i]} ';
  }

  print('The number of distinct number is ${distinct.length}');
  print('The distinct numbers are: ${result.trim()}');
}

void main() {
  List<int> numbers = [1, 2, 3, 2, 1, 6, 3, 4, 5, 2, 2 , 4, 6, 7, 8];

  print(numbers);
  getDistinctNumbers(numbers);
}