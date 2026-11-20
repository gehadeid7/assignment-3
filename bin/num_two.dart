int getSecondSmallest(List<int> numbers) {
  int min = numbers[0];
  int second = numbers[0];
  bool secondSet = false;

  for (int i = 1; i < numbers.length; i++) {
    int n = numbers[i];

    if (n < min) {
      second = min;
      secondSet = true;
      min = n;
    } else if (n > min && (!secondSet || n < second)) {
      second = n;
      secondSet = true;
    }
  }

  return second;
}

void main() {
  List<int> numbers = [1, 9, 0, 5, 4, 2];
  print(numbers);
  print(getSecondSmallest(numbers));
}