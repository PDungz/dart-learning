import 'oop_in_dart.dart';

void main(List<String> args) {
  // Tạo đối tượng Employee
  final employee = Employee("Dung", 21);
  // Truy cập thông qua getter thay vì truy cập trực tiếp vào thuộc tính riêng tư
  print("Employee: ${employee.name} - ${employee.age}");

  // Tạo đối tượng Manager
  final manager = Manager("Dung", 21);
  print("Manager: ${manager.name} - ${manager.age}");
  manager.work();
}
