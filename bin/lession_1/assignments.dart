void main(List<String> args) async {
  ///! Bài Tập 1: Kiểu Dữ Liệu Cơ Bản
  ///* 1. Tạo một biến int lưu trữ số tuổi của bạn và in ra giá trị của nó.

  // int age = 2024;
  // PrintI(title: 'variable int', args: age);

  ///* 2. Tạo một biến double để lưu chiều cao của bạn và in ra giá trị của nó.

  // double height = 170;
  // PrintI(title: 'variable double', args: height);

  ///* 3. Tạo một biến String lưu trữ tên của bạn và in ra giá trị của nó.

  // String name = 'Dungx';
  // PrintI(title: "variable String", args: name);

  ///* 4. Tạo một biến bool để lưu trữ trạng thái isStudent (là sinh viên hay không) và in ra giá trị của nó.

  // bool isStudent = true;
  // PrintI(title: "variable bool", args: isStudent);

  ///* 5. Tạo một biến dynamic và thử gán các giá trị khác nhau cho nó (chữ, số nguyên, số thực).

  // dynamic dyc = 100;
  // PrintI(title: "variable dynamic - int", args: dyc);
  // //
  // PrintI(title: "variable dynamic - double", args: dyc = 110);
  // //
  // PrintI(title: "variable dynamic - String", args: dyc = 'abcxyz');
  // //
  // PrintI(title: "variable dynamic - bool", args: dyc = true);

  ///* 6. Khai báo một biến `var` để lưu tên bạn và in ra giá trị của nó
  // var yourName = "DungX";
  // PrintI(title: "var", args: yourName);
  // PrintI(title: "var", args: yourName = 12);

  ///* 7. Khai báo một biến `final` để lưu ngày sinh của bạn và in ra giá trị của nó.
  ///*    Thử thay đổi giá trị của biến này sau khi in và ghi nhận kết quả.
  // final birthday = "01/01/2003";
  // PrintI(title: "Final", args: birthday);
  // PrintI(title: "Final", args: birthday = "100");

  //
  // PrintI(title: "datetime", args: DateTime.now());
  // final DateTime currentTime;
  // print("Waiting.....");
  // await Future.delayed(
  //   Duration(seconds: 5),
  //   () {
  //     print("done");
  //     return;
  //   },
  // );
  // currentTime = DateTime.now();
  // PrintI(title: "datetime", args: currentTime);

  ///* 8. Khai báo một biến `const` để lưu giá trị Pi (3.14159) và in ra giá trị của nó.
  ///*    Thử thay đổi giá trị của biến này và ghi nhận kết quả.
  // const pi = 3.14;
  // PrintI(title: "const variable", args: pi);

  ///* 2. Tạo một biến `late` kiểu `DateTime`, gán giá trị hiện tại cho biến sau 3 giây và in ra thời gian.

  // PrintI(
  //     title: "Thoi diem trc khi late variable dc gan: ", args: DateTime.now());
  // late DateTime currentTime2;
  // print("waiting.....");
  // await Future.delayed(
  //   Duration(seconds: 5),
  //   () {
  //     print("done");
  //     return;
  //   },
  // );
  // currentTime2 = DateTime.now();
  // PrintI(title: "Thoi diem sau khi late variable dc gan: ", args: currentTime2);

  // List
  // List numbers = [1, 2, 3, 4];

  // PrintI(title: 'List - numbers', args: numbers);

  // numbers.add(6);

  // PrintI(title: 'List - numbers', args: numbers);

  // Set
  // Set fruits = {'apple', 'banana', 'orange'};
  // fruits.add('banana');
  // PrintI(title: 'Set - String', args: fruits);

  // Map
  Map<String, int> phoneBook = {
    'Alice': 1234,
    'Bod': 3242408,
    'Charlie': 112233,
  };
  PrintI(title: 'Map', args: phoneBook);
  phoneBook['David'] = 546554;
  PrintI(title: 'Map', args: phoneBook);
  phoneBook['Alice'] = 07690;
  PrintI(title: 'Map', args: phoneBook);
}

void PrintI({title, args}) {
  print(
      '\x1b[36m┌============================================\n\x1b[36m│ Dart run - \x1b[32m$title: \x1b[31m$args\n\x1b[36m├============================================\n\x1b[31m┌======================================================================================');
}
