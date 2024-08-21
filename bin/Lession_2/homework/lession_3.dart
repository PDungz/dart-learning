import 'dart:io';

void main() {
  stdout.write("Nhập số thứ nhất: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Nhập số thứ hai: ");
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Nhập toán tử (+, -, *, /): ");
  String operator = stdin.readLineSync()!;

  switch (operator) {
    case '+':
      print("Kết quả: ${num1 + num2}");
      break;
    case '-':
      print("Kết quả: ${num1 - num2}");
      break;
    case '*':
      print("Kết quả: ${num1 * num2}");
      break;
    case '/':
      if (num2 != 0) {
        print("Kết quả: ${num1 / num2}");
      } else {
        print("Lỗi: Không thể chia cho 0.");
      }
      break;
    default:
      print("Toán tử không hợp lệ.");
  }
}
