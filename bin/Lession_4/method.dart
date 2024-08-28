//? Function
//  - Là một khối code thực hiện một nhiệm vụ cụ thể
//    và có thể được gọi từ bất kỳ đâu trong chương trình.

//  - Functions thường đứng độc lập, không thuộc về bất kỳ đối tượng hay lớp nào.

//  - Functions có thể nhận tham số đầu vào và trả về kết quả.
// Function toàn cục
// void main() {
//   int result = add(5, 3); // Gọi function
//   print(result); // In ra: 8
// }

// int add(int a, int b) {
//   return a + b;
// }

//? Method
//  - Là một function nhưng gắn liền với một đối tượng hoặc class cụ thể.

//  - Methods là các thành phần của lớp hoặc đối tượng,
//    và có thể thao tác trên các thuộc tính của đối tượng hoặc lớp mà chúng thuộc về.

//  - Methods cũng có thể nhận tham số đầu vào và trả về kết quả.
// class Calculator {
//   // Instance method
//   int add(int a, int b) {
//     return a + b;
//   }
// }

// void main() {
//   var calculator = Calculator();
//   int result = calculator.add(5, 3); // Gọi method của đối tượng calculator
//   print(result); // In ra: 8
// }

//? Static Method
//  - Static methods là methods được định nghĩa với từ khóa static
//    và thuộc về chính lớp đó thay vì các đối tượng cụ thể

//?  - Static methods có thể được gọi trực tiếp từ lớp mà không cần tạo đối tượng.

//  - Static methods có một số đặc điểm giống với functions, nhưng vẫn là một phần của lớp.
// class MathUtils {
//   // Static method
//   static int multiply(int a, int b) {
//     return a * b;
//   }
// }

// void main() {
//   int result =
//       MathUtils.multiply(5, 3); // Gọi static method mà không cần tạo đối tượng
//   print(result); // In ra: 15
// }

//? Static Method
//  - Static methods là methods được định nghĩa với từ khóa static
//    và thuộc về chính lớp đó thay vì các đối tượng cụ thể

//?  - Static methods có thể được gọi trực tiếp từ lớp mà không cần tạo đối tượng.
//?  - Chỉ có static variable mới có thể dc truy xuất, thao tác bên trong static method.

//  - Static methods có một số đặc điểm giống với functions, nhưng vẫn là một phần của lớp.

// void main() {
//   int result =
//       MathUtils.multiply(5, 3); // Gọi static method mà không cần tạo đối tượng
//   print(result); // In ra: 15
// }

// class MathUtils {
//   // Static method
//   static int c = 20;

//   static int multiply(int a, int b) {
//     print("Giá trị của c là: ${c.toString()}");
//     return a * b;
//   }
// }

//! Khi nào sử dụng Function và Method:

//? Function:
//  Sử dụng khi bạn cần một khối mã thực hiện một tác vụ chung, không liên quan đến bất kỳ đối tượng cụ thể nào.

//? Method:
// Sử dụng khi bạn cần một khối mã liên quan đến một lớp hoặc đối tượng cụ thể,
// thường thao tác trên các thuộc tính của đối tượng đó.

//! Tham trị (Pass by Value)
// Tham trị là cách truyền giá trị của biến vào hàm.
// Điều này có nghĩa là hàm
//? Kiểu dữ liệu nguyên thủy như int, String, bool, v.v., là immutable (bất biến)
//? ngoại trừ Object và Collections (List, Map, Set) => mutable type

//? Do đó, Kiểu dữ liệu nguyên thủy được truyền theo tham trị (pass by value)
//? có nghĩa là khi bạn gán hoặc truyền một biến kiểu dữ liệu nguyên thủy,
//? một bản sao của giá trị được tạo ra, và không có sự thay đổi nào trên giá trị gốc.
// void main() {
//   int x = 5;
//   print('Before x dc truyền vào hàm changeValue: $x'); // In ra: Before: 5

//   //? biến x được truyền vào hàm changeValue theo tham trị.
//   //? Hàm changeValue chỉ thay đổi bản sao của giá trị x,
//   //? vì vậy giá trị gốc của x không thay đổi sau khi gọi hàm.
//   changeValue(x);
//   print('After x dc truyền vào hàm changeValue: : $x'); // In ra: After: 5
// }

// void changeValue(int number) {
//   number = 10;
//   print("number inside changeValue() method: $number");
// }

//! Tham chiếu (Pass by Reference)
// Tham chiếu là cách truyền đối tượng (Object) vào hàm hoặc phương thức
// bằng cách truyền địa chỉ (tham chiếu) của đối tượng đó.

// Do đó, khi bạn thay đổi giá trị của đối tượng trong hàm, thay đổi đó
// sẽ ảnh hưởng đến đối tượng gốc bên ngoài hàm.
// //? đối tượng Person được truyền vào hàm changeName theo tham chiếu.
// void changeName(Person person) {
//   person.name = 'Alice';
// }

// class Person {
//   String name;

//   Person(this.name);
// }

// void main(List<String> args) {
//   Person p = Person('Bob');
//   print('Before: ${p.name}'); // In ra: Before: Bob

//   //? Khi hàm changeName thay đổi thuộc tính name của đối tượng Person,
//   //? thay đổi đó ảnh hưởng trực tiếp đến đối tượng p bên ngoài hàm.
//   changeName(p);

//   print('After: ${p.name}'); // In ra: After: Alice
// }

// Nếu sử dụng phép gán = 
// class Vector {
//   double? x;
//   double? y;
//   VectorVer2? vectorVer2;

//   Vector({this.x, this.y, this.vectorVer2});

//   //! Tham trị và method copyWith
//   // Developer thường viết thêm hàm copyWith
//   // để thực hiện việc sao chép toàn bộ giá trị của object
//   // nhưng vẫn tránh dc việc tham chiếu cùng vùng nhớ
//   Vector copyWith({double? x, double? y, VectorVer2? vectorVer2}) {
//     return Vector(
//         x: x ?? this.x,
//         y: y ?? this.y,
//         vectorVer2: vectorVer2 ?? this.vectorVer2?.copyWith());
//   }
// }
// class VectorVer2 {
//   double? z;
//   VectorVer2({
//     this.z,
//   });

//   VectorVer2 copyWith({double? z}) {
//     return VectorVer2(z: z ?? this.z);
//   }
// }
// void main(List<String> args) {
//   final vectorA = Vector(x: 2, y: 3, vectorVer2: VectorVer2(z: 5));
//   final vectorB = vectorA;
//   print('Hash A: ${vectorA.hashCode}');
//   print('Hash B: ${vectorA.hashCode}');
//   print('Vector A = Vector B ko??? ${vectorA == vectorB}');

//   print('x of vectorA: ${vectorA.x}');
//   print('x of vectorB: ${vectorB.x}');
//   vectorB.x = 5;
//   print('---');
//   print('x of vectorA: ${vectorA.x}');
//   print('x of vectorB: ${vectorB.x}');

//   final vectorC = vectorA.copyWith();
//   print('x of vectorA: ${vectorA.x}');
//   print('x of vectorC: ${vectorC.x}');
//   vectorC.x = 6;

//   print('---');
//   print('x of vectorA: ${vectorA.x}');
//   print('x of vectorC: ${vectorC.x}');

//   print("thay đổi giá trị của VectorVer2 của Vector C thành 10");
//   vectorC.vectorVer2?.z = 15;

//   print('z of vectorVer2 của vectorC: ${vectorC.vectorVer2?.z}');
//   print('z of vectorVer2 của vectorA: ${vectorA.vectorVer2?.z}');
// }