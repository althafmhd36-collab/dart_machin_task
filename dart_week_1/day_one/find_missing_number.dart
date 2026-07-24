int findMissingNumber(List<int> numbers, int n) {
  int expectedSum = n * (n + 1) ~/ 2;

  int actualSum = 0;

  for (int number in numbers) {
    actualSum += number;
  }

  return expectedSum - actualSum;
}

void main() {
  List<int> numbers = [1, 2, 3, 5, 6, 7, 8];

  int n = numbers.last;

  int resultNumber = findMissingNumber(numbers, n);

  print(resultNumber);
}
