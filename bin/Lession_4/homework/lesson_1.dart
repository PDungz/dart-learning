//! Bài tập 1: Quản lý Nhân viên với Đa hình và Kế thừa
//? Yêu cầu:
// - Tạo lớp trừu tượng Employee với các thuộc tính name, id, và phương thức calculateSalary().
// - Tạo hai lớp FullTimeEmployee có thuộc tính monthySalary và PartTimeEmployee có thuộc tính salaryRate, workedHour
// - 2 lớp FullTimeEmployee và PartTimeEmployee kế thừa từ Employee, mỗi lớp phải cung cấp cách tính lương riêng bằng cách ghi đè phương thức calculateSalary().
// - Tạo một danh sách các đối tượng Employee chứa cả nhân viên toàn thời gian và bán thời gian, sau đó tính tổng lương của tất cả các nhân viên.
//? Đặc tính OOP:
// - Trừu tượng hóa: Lớp Employee là lớp trừu tượng.
// - Kế thừa: FullTimeEmployee và PartTimeEmployee kế thừa từ Employee.
// - Đa hình: Danh sách Employee sử dụng phương thức calculateSalary() theo cách của từng lớp con.

abstract class Employee {
  final String _id;
  String _name;

  Employee(
    this._id,
    this._name,
  );
  // Getter cho id và name
  String get id => _id;
  String get name => _name;
  set name(String name) => _name = name; // Setter cho name

  // Phương thức trừu tượng để tính lương
  double CalculateSalary();
}

class FullTimeEmployee extends Employee {
  final double _monthySalary;

  FullTimeEmployee(super.id, super.name, this._monthySalary);

  @override
  double CalculateSalary() => _monthySalary;
}

class PartTimeEmployee extends Employee {
  final double _salaryRate;
  final double _workedHour;

  PartTimeEmployee(super.id, super.name, this._salaryRate, this._workedHour);

  @override
  double CalculateSalary() => _salaryRate * _workedHour;
}

void main(List<String> args) {
  List<Employee> employees = [
    FullTimeEmployee('1', 'Chis', 100),
    PartTimeEmployee('2', 'TA', 10, 30)
  ];

  double sum = 0;
  for (var employee in employees) {
    sum += employee.CalculateSalary();
  }
  print("Tinh tong luong cua tat ca nhan vien: $sum");
}
