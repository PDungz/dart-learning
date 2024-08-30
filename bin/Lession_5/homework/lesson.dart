// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Bài tập: Quản Lý Danh Sách Sinh Viên

//* Bạn sẽ tạo một chương trình quản lý danh sách sinh viên. Mỗi sinh viên sẽ có một trạng thái học tập được quản lý bằng enum

//* Bạn sẽ cập nhật thông tin sinh viên và thực hiện các phép toán như thêm, và cập nhật sinh viên trong danh sách.

//? Yêu cầu:
// * Enum StudyStatus: Định nghĩa các trạng thái học tập của sinh viên gồm Active (Đang theo học), Graduated (tốt nghiệp), DroppedOut (nghỉ học).
// * Lớp Student:
//  - Có thuộc tính: id, name, age, status (kiểu StudyStatus).
//  - Lưu ý: khai báo toàn bộ thuộc tính với keyword final.
//  - Cung cấp phương thức copyWith để tạo một bản sao của sinh viên với các thuộc tính được thay đổi (chỉ có id là ko thể cập nhật giá trị).

//? Function:
//  * Function  thêm 1 học sinh mới addStudent(List<Student> students, Student student) để thêm sinh viên vào danh sách . (Pass by reference)
//  * Function cập nhật thông tin sinh viên, updateStudent student(List<Student>, Student updatedStudent). (Pass by reference)
//    Các bước thực hiện:
//      - Lấy đối tượng Student mà bạn muốn chỉnh sửa từ Danh sách Student
//      - Gọi hàm copyWith() của đối tượng bạn vừa lấy ra để thay đổi thuộc tính bạn muốn.
//      - Hàm copyWith sẽ trả về 1 instance mới do đó bạn cần chỉ định 1 biến lưu trữ, ví dụ: final updatedStudent = student1.copyWith(age: 23);
//      - Truyền giá trị của updatedStudent vào hàm updateStudent student(List<Student> listStudent, Student updatedStudent)
//      - Trong body của hàm updateStudent(), update giá trị của item cần update trong list bằng index, (gợi ý lấy index bằng cách sử dụng hàm indexWhere() của List<Student> )
//      - Sau khi có dc index của item cần update, thay đổi giá trị của item trong list bằng index, ví dụ: listStudent[index] = updatedStudent
//
//  * function calculateAverageAge(List<Student> students) để tính tuổi trung bình của các sinh viên trong danh sách (Pass by value).

//? In ra kết quả:
//? In ra danh sách sinh viên trước và sau khi thay đổi để thấy dc sử khác biệt

import 'dart:ffi';
import 'dart:io';

enum StudyStatus { Active, Graduated, DroppedOut }

class Student {
  final int id;
  final String name;
  final int age;
  final StudyStatus status;

  Student({
    required this.id,
    required this.name,
    required this.age,
    required this.status,
  });

  Student copyWith({
    int? id,
    String? name,
    int? age,
    StudyStatus? status,
  }) {
    return Student(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      status: status ?? this.status,
    );
  }

  // Phương thức toString để hiển thị thông tin sinh viên
  @override
  String toString() {
    return 'Student(id: $id, name: $name, age: $age, status: $status)';
  }
}

// Nhap thong tin student
Student inputStudent() {
  print("Nhập id: ");
  int id = int.parse(stdin.readLineSync()!);
  print("Nhập name: ");
  String name = stdin.readLineSync()!;
  print("Nhập age: ");
  int age = int.parse(stdin.readLineSync()!);
  print("Chọn status (1. Active, 2. Graduated, 3. DroppedOut): ");
  int statusChoice = int.parse(stdin.readLineSync()!);

  StudyStatus status = StudyStatus.DroppedOut;
  switch (statusChoice) {
    case 1:
      status = StudyStatus.Active;
      break;
    case 2:
      status = StudyStatus.Graduated;
      break;
    case 3:
      status = StudyStatus.DroppedOut;
      break;
    default:
      print("Lựa chọn sai! Mặc định là DroppedOut.");
      status = StudyStatus.DroppedOut;
  }

  return Student(id: id, name: name, age: age, status: status);
}

// Them thong tin student
void addStudent(List<Student> students, Student student) {
  students.add(student);
}

// Cap nhat thong tin student
void updateStudent(List<Student> students, Student updatedStudent) {
  print(updatedStudent);
  int index = students.indexWhere((student) => student.id == updatedStudent.id);
  if (index != -1) {
    students[index] = updatedStudent;
  } else {
    print('Không tìm thấy sinh viên có id: ${updatedStudent.id}');
  }
}

// Tinh tuoi trung binh cua cac student
void calculateAverageAge(List<Student> students) {
  int sum = 0;
  for (var student in students) {
    sum += student.age;
  }
  print(
      "Tuoi trung binh cua cac sinh vien trong danh sach: ${sum / students.length}");
}

void main(List<String> args) {
  try {
    bool isRunning = true;
    List<Student> students = [
      Student(id: 1, name: "Dung", age: 21, status: StudyStatus.Active)
    ];

    while (isRunning) {
      print("Chon chuc nang: ");

      print("1. Them student vao danh sach ");
      print("2. Cap nhat student trong danh sach ");
      print("3. Tinh tuoi trung binh cac student trong ds ");
      print("4. In danh sach ");
      print("5. Thoat chuong trinh ");

      int choese = int.parse(stdin.readLineSync()!);
      switch (choese) {
        case 1:
          Student student = inputStudent();
          addStudent(students, student);
          break;
        case 2:
          print("Nhap id can tim: ");
          int idSearch = int.parse(stdin.readLineSync()!);
          print("Nhập age: ");
          int age = int.parse(stdin.readLineSync()!);
          Student studentToUpdate =
              students.firstWhere((student) => student.id == idSearch);
          Student updatedStudent =
              studentToUpdate.copyWith(age: age, status: StudyStatus.Graduated);
          updateStudent(students, updatedStudent);
          break;
        case 3:
          calculateAverageAge(students);
          break;
        case 4:
          print('Danh sách sinh viên ban đầu:');
          for (var student in students) {
            print(student);
          }
          print("");
          break;
        case 5:
          isRunning = false;
          break;
        default:
          print("Lua chon sai!");
          break;
      }
    }
  } catch (e) {
    print("Messeage: $e");
  }
}

// // Định nghĩa enum StudyStatus
// enum StudyStatus { Active, Graduated, DroppedOut }

// // Định nghĩa lớp Student
// class Student {
//   final int id;
//   final String name;
//   final int age;
//   final StudyStatus status;

//   Student({
//     required this.id,
//     required this.name,
//     required this.age,
//     required this.status,
//   });

//   // Phương thức copyWith để tạo bản sao sinh viên với các thuộc tính thay đổi
//   Student copyWith({String? name, int? age, StudyStatus? status}) {
//     return Student(
//       id: id, // id không thay đổi
//       name: name ?? this.name,
//       age: age ?? this.age,
//       status: status ?? this.status,
//     );
//   }

//   // Phương thức toString để hiển thị thông tin sinh viên
//   @override
//   String toString() {
//     return 'Student(id: $id, name: $name, age: $age, status: $status)';
//   }
// }

// // Hàm thêm sinh viên mới vào danh sách
// void addStudent(List<Student> students, Student student) {
//   students.add(student);
// }

// // Hàm cập nhật thông tin sinh viên
// void updateStudent(List<Student> students, Student updatedStudent) {
//   int index = students.indexWhere((student) => student.id == updatedStudent.id);
//   if (index != -1) {
//     students[index] = updatedStudent;
//   }
// }

// // Hàm tính tuổi trung bình của các sinh viên trong danh sách
// double calculateAverageAge(List<Student> students) {
//   if (students.isEmpty) return 0.0;
//   int totalAge = students.fold(0, (sum, student) => sum + student.age);
//   return totalAge / students.length;
// }

// void main() {
//   // Khởi tạo danh sách sinh viên
//   List<Student> students = [
//     Student(id: 1, name: 'John', age: 20, status: StudyStatus.Active),
//     Student(id: 2, name: 'Alice', age: 22, status: StudyStatus.Graduated),
//     Student(id: 3, name: 'Bob', age: 19, status: StudyStatus.DroppedOut),
//   ];

//   // In ra danh sách sinh viên ban đầu
//   print('Danh sách sinh viên ban đầu:');
//   students.forEach((student) => print(student));

//   // Thêm sinh viên mới
//   addStudent(students, Student(id: 4, name: 'Charlie', age: 21, status: StudyStatus.Active));

//   // Cập nhật thông tin sinh viên
//   Student studentToUpdate = students.firstWhere((student) => student.id == 1);
//   Student updatedStudent = studentToUpdate.copyWith(age: 21, status: StudyStatus.Graduated);
//   updateStudent(students, updatedStudent);

//   // In ra danh sách sinh viên sau khi thay đổi
//   print('\nDanh sách sinh viên sau khi cập nhật:');
//   students.forEach((student) => print(student));

//   // Tính tuổi trung bình của các sinh viên trong danh sách
//   double averageAge = calculateAverageAge(students);
//   print('\nTuổi trung bình của các sinh viên: $averageAge');
// }
