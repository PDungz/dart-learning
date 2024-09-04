//! Bài tập 2: Sử dụng Extension

//? Bạn sẽ tạo một extension cho lớp int để tính toán các phép toán cơ bản với số nguyên. Extension này sẽ bổ sung các phương thức như isPrime() để kiểm tra số nguyên tố, factorial() để tính giai thừa, và isEvenNumber() để kiểm tra số chẵn.

//? Yêu cầu:
// * Tạo một extension có tên IntExtensions cho lớp int.
// * Trong extension này, thêm các phương thức sau:
//    - bool isPrime(): Kiểm tra xem một số có phải là số nguyên tố không.
//    - int factorial(): Tính giai thừa của số.
//    - bool isEvenNumber(): Kiểm tra xem một số có phải là số chẵn không.
//    - Trong hàm main(), sử dụng các phương thức trong extension để thực hiện tính toán và in kết quả.
//? Giải thích:
// * isPrime():
//    - Phương thức này kiểm tra xem một số nguyên có phải là số nguyên tố không bằng cách kiểm tra chia hết từ 2 đến một nửa giá trị của số đó.
//    - Nếu số chia hết cho bất kỳ số nào trong phạm vi này, nó không phải là số nguyên tố.
// * factorial():
//    - Phương thức này tính giai thừa của một số nguyên.
//    - Giai thừa của n (ký hiệu là n!) là tích của tất cả các số từ 1 đến n.
//    - Nếu số nguyên là 0, giai thừa là 1 theo định nghĩa toán học.
// * isEvenNumber():
//    - Phương thức này kiểm tra xem số có chia hết cho 2 hay không, nếu có thì đó là số chẵn.

import 'dart:math';

extension IntExtensions on int {
  bool isPrime() {
    for (int i = 2; i <= sqrt(this); i++) {
      if (this % i == 0) {
        return false;
      }
    }
    return true;
  }

  int factorial() {
    int fa = 1;
    if (this < 0) throw Exception("Giai thua khong xac dinh cho so am");
    for (int i = 2; i <= this; i++) {
      fa *= i;
    }
    return fa;
  }

  bool isEvenNumber() => this % 2 == 0;
}

void main(List<String> args) {
  int a = -5;
  print("Kiem tra $a ${a.isPrime() ? 'la' : 'khong phai'} so nguyen to ");
  print("Kiem tra $a ${a.isEvenNumber() ? 'la' : 'khong phai'} so chan ");
  try {
    print("Tinh gia thua ${a.factorial()}");
  } catch (e) {
    print(e);
  }
}
