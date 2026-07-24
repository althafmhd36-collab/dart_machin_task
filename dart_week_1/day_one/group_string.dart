void main() {
  List<String> word = ["cat", "apple", "dog", "banana"];

  Map<int, List<String>> result = {};

  for (var words in word) {
    int length = words.length;

    result.putIfAbsent(length, () => []);
    result[length]!.add(words);

                 
  }

  print(result);
}
