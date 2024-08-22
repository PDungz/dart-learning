void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  List<int> evenNumbers = [];
  List<int> oddNumbers = [];

  for (var number in numbers) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    } else {
      oddNumbers.add(number);
    }
  }

  print("Số chẵn: $evenNumbers");
  print("Số lẻ: $oddNumbers");
}
