import 'dart:io';

void main() {
  stdout.write("Nhập vào một số nguyên: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("$number là số chẵn.");
  } else {
    print("$number là số lẻ.");
  }
}
