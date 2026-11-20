int calculateEven(List<int> numbers) {
  int sum = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      sum += numbers[i];
    }
  }

  return sum;
}

void main() {
  List<int> numbers = [1, 6, 4, 5, -1, 10];

  print(numbers);
  print(calculateEven(numbers));
}