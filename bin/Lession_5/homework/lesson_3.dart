// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Bài tập 3: Tạo Lớp Hộp Đa Năng Sử Dụng Generic
//? Bạn sẽ tạo một lớp Box sử dụng Generic để lưu trữ một giá trị duy nhất có thể là bất kỳ loại dữ liệu nào.
//? Lớp này sẽ có các phương thức để đặt giá trị mới vào hộp, lấy giá trị từ hộp, và thực hiện các tính toán logic như kiểm tra giá trị đó có phải là số chẵn (nếu là số nguyên) hoặc độ dài của chuỗi (nếu là chuỗi).

//? Yêu cầu:
// * Tạo lớp Box<T> với thuộc tính value để lưu trữ giá trị của kiểu T.
// * Thêm các phương thức sau:
//    - void setValue(T newValue): Đặt giá trị mới vào hộp.
//    - T getValue(): Lấy giá trị hiện tại từ hộp.
//    - bool isEven(): Kiểm tra xem giá trị trong hộp có phải là số chẵn (nếu là số nguyên). Nếu không phải là số nguyên, trả về false.
//    - int stringLength(): Trả về độ dài của chuỗi nếu giá trị trong hộp là chuỗi. Nếu không phải là chuỗi, trả về -1.
// * Trong main(), tạo các đối tượng Box<int> và Box<String>, sau đó kiểm tra các phương thức logic đã thêm.

//? Giải thích:
// * Box<T>:
//    - Đây là một lớp sử dụng Generic (T) để có thể chứa giá trị của bất kỳ loại dữ liệu nào.
//    - Thuộc tính value lưu trữ giá trị của kiểu T.
// * Phương thức isEven():
//    - Phương thức này kiểm tra xem giá trị trong hộp có phải là số nguyên và có phải là số chẵn hay không.
//    - Nếu giá trị không phải là số nguyên, nó trả về false.
// * Phương thức stringLength():
//    - Phương thức này trả về độ dài của chuỗi nếu giá trị trong hộp là chuỗi.
//    - Nếu giá trị không phải là chuỗi, nó trả về -1.

class Box<T> {
  T value;

  Box(
    this.value,
  );

  void setValue(T newValue) {
    value = newValue;
  }

  T getValue() {
    return value;
  }

  bool isEven() {
    if (value is int) return (value as int) % 2 == 0;
    return false;
  }

  int stringLength() {
    if (value is String) {
      return (value as String).length;
    }
    return -1;
  }
}

void main(List<String> args) {
  // Tạo đối tượng Box<int>
  Box<int> intBox = Box(10);
  print("Giá trị trong intBox là: ${intBox.getValue()}");
  print("Giá trị trong intBox có phải là số chẵn không? ${intBox.isEven()}");

  // Tạo đối tượng Box<String>
  Box<String> strBox = Box("Hello");
  print("Giá trị trong strBox là: ${strBox.getValue()}");
  print("Độ dài của chuỗi trong strBox là: ${strBox.stringLength()}");

  // Đặt giá trị mới cho intBox
  intBox.setValue(15);
  print("Giá trị mới trong intBox là: ${intBox.getValue()}");
  print("Giá trị trong intBox có phải là số chẵn không? ${intBox.isEven()}");

  // Đặt giá trị mới cho strBox
  strBox.setValue("Dart Programming");
  print("Giá trị mới trong strBox là: ${strBox.getValue()}");
  print("Độ dài của chuỗi trong strBox là: ${strBox.stringLength()}");
}
