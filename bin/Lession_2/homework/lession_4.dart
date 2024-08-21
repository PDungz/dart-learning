import 'dart:io';

void main() {
  stdout.write("Nhập điểm của học sinh: ");
  double score = double.parse(stdin.readLineSync()!);

  if (score >= 85) {
    print("Xếp loại: Giỏi");
  } else if (score >= 70) {
    print("Xếp loại: Khá");
  } else if (score >= 50) {
    print("Xếp loại: Trung bình");
  } else {
    print("Xếp loại: Yếu");
  }
}
