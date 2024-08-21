void main(List<String> args) {
  List<int> listNumber({required int number}) {
    List<int>? numbers = [];
    for (int i = 0; i <= 8; i++) {
      numbers.add(i);
    }
    return numbers;
  }

  print(listNumber(number: 8));
}
