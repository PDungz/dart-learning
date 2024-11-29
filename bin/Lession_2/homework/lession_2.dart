import 'dart:io';

void main() {
  stdout.write("Nhập số thứ nhất: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Nhập số thứ hai: ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Nhập số thứ ba: ");
  int c = int.parse(stdin.readLineSync()!);

  if (a >= b && a >= c) {
    print("Số lớn nhất là: $a");
  } else if (b >= a && b >= c) {
    print("Số lớn nhất là: $b");
  } else {
    print("Số lớn nhất là: $c");
  }
}
