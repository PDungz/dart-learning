//! Bài tập 4: Hệ thống Quản lý Nhân viên với CRUD và Kế thừa
// Dựa trên yêu cầu bài 1, bài 4 sẽ nâng cấp 1 số tính năng
//? Yêu cầu:
// - Tạo lớp trừu tượng Employee với các thuộc tính name, id, và phương thức calculateSalary().
// - Tạo các lớp FullTimeEmployee và PartTimeEmployee kế thừa từ Employee.
// - Tạo lớp EmployeeManager để quản lý danh sách các đối tượng Employee và cung cấp các phương thức CRUD.
// - Create: Tạo 1 nhân viên mới và thêm vào danh sách nhân viên
// - Read: Lấy thông tin của nhân viên dưa trên id
// - Update: Chỉnh sửa thông tin của nhân viên dựa trên ID (Chỉ Id nhân viên là ko thay đổi dc giá trị) còn lại có thể thay đổi giá trị.
// - Ở bài này ta chỉ cần chỉnh sửa thông tin name của nhân viên
// - Delete: Xoá nhân viên ra khỏi danh sách dựa trên id
// - Tạo phương thức để tính tổng lương của tất cả nhân viên trong EmployeeManager.

//? Đặc tính OOP:
// - Tính đóng gói: Sử dụng private để bảo vệ thuộc tính và cung cấp các phương thức getter/setter.
// - Trừu tượng hóa: Lớp Employee là lớp trừu tượng.
// - Kế thừa: Các lớp FullTimeEmployee và PartTimeEmployee kế thừa từ Employee.

import 'lesson_1.dart';

class EmployeeManager {
  final List<Employee> _employees = [];

  // Create: Thêm nhân viên mới vào danh sách
  void addEmployee(Employee employee) {
    _employees.add(employee);
    print("Nhân viên đã được thêm: ${employee.name}");
  }

  // Read: Lấy thông tin nhân viên dựa trên ID
  Employee? getEmployeeById(String id) {
    try {
      return _employees.firstWhere((employee) => employee.id == id);
    } catch (e) {
      return null; // Trả về null nếu không tìm thấy
    }
  }

  // Update: Cập nhật tên nhân viên dựa trên ID
  void updateEmployeeName(String id, String newName) {
    Employee? employee = getEmployeeById(id);
    if (employee != null) {
      employee.name = newName; // Cập nhật tên nhân viên qua setter
      print("Tên nhân viên đã được cập nhật thành: $newName");
    } else {
      print("Không tìm thấy nhân viên với ID: $id");
    }
  }

  // Delete: Xóa nhân viên ra khỏi danh sách dựa trên ID
  void deleteEmployee(String id) {
    Employee? employee = getEmployeeById(id);
    if (employee != null) {
      _employees.remove(employee);
      print("Nhân viên với ID: $id đã được xóa.");
    } else {
      print("Không tìm thấy nhân viên với ID: $id");
    }
  }

  // Tính tổng lương của tất cả các nhân viên
  double calculateTotalSalary() {
    return _employees.fold(
        0, (sum, employee) => sum + employee.CalculateSalary());
  }

  // Hiển thị thông tin của tất cả các nhân viên
  void showAllEmployees() {
    for (var employee in _employees) {
      print(
          "ID: ${employee.id}, Name: ${employee.name}, Salary: ${employee.CalculateSalary()}");
    }
  }
}

void main() {
  // Tạo đối tượng EmployeeManager
  EmployeeManager employeeManager = EmployeeManager();

  // Tạo nhân viên mới và thêm vào danh sách
  employeeManager.addEmployee(FullTimeEmployee("1", "Alice", 3000));
  employeeManager.addEmployee(PartTimeEmployee("2", "Bob", 15, 80));

  // Hiển thị tất cả nhân viên
  print("Danh sách nhân viên:");
  employeeManager.showAllEmployees();

  // Cập nhật tên của nhân viên có ID "1"
  employeeManager.updateEmployeeName("1", "Alicia");

  // Xóa nhân viên có ID "2"
  employeeManager.deleteEmployee("2");

  // Tính tổng lương của tất cả nhân viên
  print(
      "Tổng lương của tất cả nhân viên: ${employeeManager.calculateTotalSalary()}");

  // Hiển thị lại danh sách nhân viên sau khi xóa
  print("Danh sách nhân viên sau khi xóa:");
  employeeManager.showAllEmployees();
}
