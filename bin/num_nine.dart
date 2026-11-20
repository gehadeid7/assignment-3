void countGeneral(List<int> numbers) {
  List<int> distinct = [];
  List<int> counts = [];

  for (int i = 0; i < numbers.length; i++) {
    bool found = false;

    for (int j = 0; j < distinct.length; j++) {
      if (distinct[j] == numbers[i]) {
        counts[j]++;
        found = true;
        break;
      }
    }

    if (!found) {
      distinct.add(numbers[i]);
      counts.add(1);
    }
  }

  for (int i = 0; i < distinct.length; i++) {
    print('${distinct[i]}->${counts[i]}');
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 2, 1, 6, 3, 4, 5, 2, 2 , 4, 6, 7, 8];

  print(numbers);
  countGeneral(numbers);
}