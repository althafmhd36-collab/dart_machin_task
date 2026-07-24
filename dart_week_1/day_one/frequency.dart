Map<String, int> frequencyOfCharecter(String text) {
  Map<String, int> frequency = {};

  for (var char in text.split('')) {
    frequency[char] = (frequency[char] ?? 0) + 1;
  }
  return frequency;
}

void main() {
  String word = 'flutter';
  print(frequencyOfCharecter(word));
}
