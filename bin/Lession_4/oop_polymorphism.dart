// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Tính đa hình
// Cho phép các đối tượng con thực thi các chức năng dc kế thừa từ lớp cha
// theo 1 cách khác, riêng biệt
// Điều này có nghĩa là lớp con có thể sử dụng một phương thức theo nhiều cách khác nhau

//? Cách hoạt động trong Dart:
// Trong các lớp con, Đa hình thường được thể hiện qua việc ghi đè (override) phương thức dc kế thừa từ lớp cha,
//    nơi mà mỗi lớp con có thể triển khai phương thức theo cách riêng của mình.

class Animal {
  void makeSound() {
    print('Animal sound');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Mèo méo meo mèo meo =))))');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Gâu gâu!');
  }
}

//! Bai tap tinh da hinh (polomorphism)
//

class Shape {
  double area() => 0;
}

class Circle extends Shape {
  final double r;

  Circle({
    required this.r,
  });

  @override
  double area() =>
      r * r * 3.14; // Fixing the area calculation for Circle (π * r²)
}

class Rectangle extends Shape {
  final double height;
  final double width;

  Rectangle({
    required this.height,
    required this.width,
  });

  @override
  double area() => width * height;
}

double total(List<Shape> shapes) {
  double totalArea = 0;
  for (var shape in shapes) {
    totalArea += shape.area();
  }
  return totalArea;
}

void main() {
  // Animal dog = Dog();
  // Animal cat = Cat();

  // dog.makeSound(); // In ra: Gâu gâu!
  // cat.makeSound(); // In ra: Mèo méo meo mèo meo!

  List<Shape> shapes = [
    Circle(r: 5),
    Rectangle(height: 10, width: 4),
  ];

  print("Total area: ${total(shapes)}");
}
