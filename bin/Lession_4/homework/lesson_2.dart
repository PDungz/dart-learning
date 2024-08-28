//! Bài tập 2: Quản lý Hình học với Đa hình và Kế thừa

//? Yêu cầu:
// - Tạo lớp trừu tượng Shape với phương thức trừu tượng area() để tính diện tích và perimeter() để tính chu vi.
// - Tạo các lớp Circle, Rectangle, và Square kế thừa từ Shape, mỗi lớp phải triển khai các phương thức area() và perimeter() theo cách riêng.
// - Tạo danh sách các đối tượng Shape và tính tổng diện tích và chu vi của tất cả các hình.

//? Đặc tính OOP:
// - Trừu tượng hóa: Lớp Shape là lớp trừu tượng.
// - Kế thừa: Các lớp hình học cụ thể kế thừa từ Shape.
// - Đa hình: Danh sách Shape có thể chứa các đối tượng của các lớp con khác nhau và sử dụng các phương thức area() và perimeter() theo cách riêng của từng lớp.

import 'dart:math';

abstract class Shape {
  // Tinh dien tich
  double area() => 0;

  // Tinh chu vi
  double perimeter() => 0;
}

class Circle extends Shape {
  final double _radius;

  Circle(this._radius);

  @override
  double area() => _radius * _radius * pi;

  @override
  double perimeter() => 2 * pi * _radius;
}

class Rectangle extends Shape {
  final double _width;
  final double _length;

  Rectangle(
    this._width,
    this._length,
  );

  @override
  double area() => _width * _length;

  @override
  double perimeter() => 2 * (_width + _length);
}

class Square extends Shape {
  final double _side;
  Square(this._side);

  @override
  double area() => _side * _side;

  @override
  double perimeter() => 2 * (_side + _side);
}

void main(List<String> args) {
  List<Shape> shapes = [Circle(5), Rectangle(5, 8), Square(5)];

  double sumArea = 0;
  double sumPerimeter = 0;

  for (var shape in shapes) {
    sumArea += shape.area();
    sumPerimeter += shape.perimeter();
  }
  print("Tinh tong dien tich cac hinh: $sumArea");
  print("Tinh tong chu vi cac hinh: $sumPerimeter");
}
