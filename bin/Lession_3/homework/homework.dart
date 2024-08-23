import 'dart:io';

void main(List<String> args) {
  bool isRunning = true;

  while (isRunning) {
    print("\n\n");
    print("1. Kiểm tra chuỗi không rỗng");
    print("2. Tính trung bình cộng của một danh sách số");
    print("3. Tìm giá trị lớn nhất và nhỏ nhất");
    print("4. Xử lý ngoại lệ khi chia hai số");
    print("5. Tạo và gọi hàm với tham số không bắt buộc");
    print("6. Thoát chương trình");
    print("Nhập lựa chọn: ");

    try {
      int choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          checkEmptyString();
          break;
        case 2:
          calculateAverage();
          break;
        case 3:
          findMaxMin();
          break;
        case 4:
          handleDivision();
          break;
        case 5:
          executeStrLoop();
          break;
        case 6:
          print("Tạm biệt!");
          isRunning = false;
          break;
        default:
          print("Lựa chọn không hợp lệ!");
      }
    } catch (e) {
      print("Lựa chọn không đúng định dạng!");
    }
  }
}

//! Hàm nhập danh sách các số nguyên
List<int> inputNumberList() {
  List<int> numbers = [];
  print("Nhập số lượng phần tử n: ");
  try {
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
      print("Nhập phần tử thứ ${i + 1}: ");
      int number = int.parse(stdin.readLineSync()!);
      numbers.add(number);
    }
  } catch (e) {
    print("Lỗi nhập dữ liệu: $e");
  }
  return numbers;
}

//! Bài tập 1: Kiểm tra chuỗi không rỗng
void checkEmptyString() {
  print("Nhập vào một chuỗi: ");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Chuỗi rỗng hoặc null');
  } else {
    print('Độ dài của chuỗi: ${input.length}');
  }
}

//! Bài tập 2: Tính trung bình cộng
void calculateAverage() {
  List<int>? numbers = inputNumberList();

  if (numbers.isEmpty) {
    print("Danh sách rỗng, không thể tính trung bình cộng.");
    return;
  }

  double average = numbers.reduce((a, b) => a + b) / numbers.length;
  print("Trung bình cộng của các phần tử: $average");
}

//! Bài tập 3: Tìm giá trị lớn nhất và nhỏ nhất
void findMaxMin() {
  List<int> numbers = inputNumberList();

  if (numbers.isEmpty) {
    print("Danh sách rỗng, không thể tìm giá trị lớn nhất và nhỏ nhất.");
    return;
  }

  int max = numbers.reduce((a, b) => a > b ? a : b);
  int min = numbers.reduce((a, b) => a < b ? a : b);

  print("Giá trị lớn nhất: $max - Giá trị nhỏ nhất: $min");
}

//! Bài tập 4: Xử lý ngoại lệ khi chia hai số
void handleDivision() {
  try {
    print("Nhập số a: ");
    int a = int.parse(stdin.readLineSync()!);
    print("Nhập số b: ");
    int b = int.parse(stdin.readLineSync()!);

    if (b == 0) {
      throw Exception("Mẫu số b phải khác 0!");
    }

    print("Kết quả của a / b = ${a / b}");
  } catch (e) {
    print("Lỗi: $e");
  }
}

//! Bài tập 5: Hàm với tham số không bắt buộc
void executeStrLoop() {
  print("Nhập chuỗi: ");
  String str = stdin.readLineSync() ?? "";

  print("Nhập số lần lặp (mặc định là 1): ");
  int n;

  try {
    n = int.parse(stdin.readLineSync()!);
  } catch (_) {
    n = 1; // Nếu không nhập số lần lặp, đặt giá trị mặc định là 1
  }

  strLoop(str, n);
}

void strLoop(String str, [int n = 1]) {
  for (int i = 1; i <= n; i++) {
    print("Lần $i: $str");
  }
}
