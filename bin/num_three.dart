void containsValue(List<int> numbers, int target) {
  bool found = false;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == target) {
      found = true;
      break;
    }
  }

  if (found) {
    print('Yes');
  } else {
    print('No');
  }
}

void main() {
  List<int> numbers = [8, 0, 3, 5];
  int target = 1;

  print(numbers);
  print(target);
  containsValue(numbers, target);
}