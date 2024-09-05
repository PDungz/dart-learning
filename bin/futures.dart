//! Future là gì?
/*
 Là kiểu đại diện cho một kết quả từ 1 tác vụ asynchronous (bất đồng bộ), 
 sau khi tác vụ hoàn thành thì nó sẽ trở thành 1 value hoặc lỗi khi không hoàn thành.
*/

// Hàm mô phỏng việc tải dữ liệu từ server
// void main() async {
//   print('Bắt đầu chương trình');

//   final data = fetchDataFromServer();

// // ! Lấy giá trị của hàm bất đồng bộ
// // ? Cách 1: sử dụng then(value)
// // ? khi hàm then dc gọi, nó sẽ mang theo giá trị trả về của hàm bất đồng bộ sau khi đã xử lý xong
//   data.then((value) {
//     print('Dữ liệu đã được tải');
//     // Hiển thị dữ liệu đã tải lên
//     print('Dữ liệu nhận được: $value');
//     print('Kết thúc chương trình');
//   });

//   print('Chạy các tác vụ khác');
// }

// Future<int> fetchDataFromServer() async {
//   print('Đang tải dữ liệu từ server...');

//   // Giả lập độ trễ khi tải dữ liệu bằng cách chờ 2 giây
//   return Future.delayed(Duration(seconds: 2), () {
//     return 3;
//   });
// }

//! Lấy giá trị của hàm bất đồng bộ
//? Cách 2: sử dụng Async await
/*
?  Là cặp keyword dùng trong asynchronous lập trình.
  Từ khóa await chỉ được sử dụng ngay bên trong một async function (method)

  Các hàm trả về kiểu dữ liệu Future<T> nếu được call với từ khóa await thì sẽ trả về kết quả thuộc kiểu T.
      
*/
// Future<String> fetchDataFromServer() async {
//   print('Đang tải dữ liệu từ server...');

//   // Giả lập độ trễ khi tải dữ liệu bằng cách chờ 2 giây
//   await Future.delayed(Duration(seconds: 10));

//   // Trả về kết quả sau khi hoàn thành
//   return 'Dữ liệu đã được tải';
// }

// void main() async {
//   print('Bắt đầu chương trình 1');

//   // Sử dụng await để đợi kết quả từ hàm fetchDataFromServer
//   final data = await fetchDataFromServer();

//   // Hiển thị dữ liệu đã tải lên
//   print('Dữ liệu nhận được: $data');

//   print('Kết thúc chương trình 1');

//   print('Chạy các chương trình khác');
// }

// void main() async {
//   print('Bắt đầu chương trình 1');

//   // Sử dụng await để đợi kết quả từ hàm fetchDataFromServer
//   final data = fetchDataFromServer();

//   data.then((value) {
//     // Hiển thị dữ liệu đã tải lên
//     print('Dữ liệu nhận được: $data');

//     print('Kết thúc chương trình 1');
//   });

//   print('Chạy các chương trình khác');
// }

// Future<String> fetchDataFromServer() async {
//   print('Đang tải dữ liệu từ server...');

//   final password = await getPassword();

//   // Trả về kết quả sau khi hoàn thành
//   return password;
// }

// Future<String> getPassword() {
//   return Future.delayed(Duration(seconds: 10), () => "abcdeyx");
// }

//! Bài tập: Giả lập Hệ Thống Đặt Hàng Trực Tuyến
//? Mô tả:
/*
Bạn sẽ tạo một chương trình giả lập một hệ thống đặt hàng trực tuyến. 

Hệ thống này sẽ bao gồm các chức năng sau:

  1. Kiểm tra hàng tồn kho: Xác định xem sản phẩm có sẵn trong kho hay không.
  2. Xử lý thanh toán: Mô phỏng việc thanh toán cho đơn hàng.
  3. Xác nhận đơn hàng: Xác nhận đơn hàng sau khi thanh toán thành công.

Tất cả các chức năng trên đều là các tác vụ tốn thời gian và sẽ được mô phỏng bằng cách sử dụng Future.delayed. 
Bạn sẽ sử dụng async và await để xử lý các tác vụ bất đồng bộ này.

*/

//! Yêu cầu:

//? Hàm checkInventory
/*
Kiểm tra xem sản phẩm có sẵn trong kho không. Nếu có, trả về true, nếu không, trả về false.
Thời gian xử lý: 1 giây.
*/

//? Hàm processPayment
/*
  Mô phỏng việc xử lý thanh toán. Nếu thanh toán thành công, trả về chuỗi "Payment Successful".
  Thời gian xử lý: 2 giây.
*/

//? Hàm confirmOrder
/*
  Xác nhận đơn hàng sau khi thanh toán thành công. Trả về chuỗi "Order Confirmed".
  Thời gian xử lý: 1 giây.
*/

//? Hàm placeOrder:
/*
Kết hợp tất cả các bước trên để đặt hàng.
Nếu sản phẩm có sẵn trong kho, tiến hành thanh toán và xác nhận đơn hàng.
Nếu sản phẩm không có sẵn, trả về chuỗi "Product out of stock".
*/

Future<bool> checkInventory(int number) async {
  print("Kiem tra hang ton kho cho san pham...");
  Future.delayed(Duration(seconds: 1));
  return number > 0 ? true : false;
}

Future<String> processPayment() async {
  print("Xu ly thanh toan cho san pham...");
  Future.delayed(Duration(seconds: 2));
  return "Payment Successful";
}

Future<String> confirmOrder() async {
  print("Xac nhan don hang cho san pham...");
  await Future.delayed(Duration(seconds: 1));
  return 'Order Confirmed';
}

Future<String> placeOrder(int number) async {
  bool passCheckInventory = await checkInventory(number);

  if (passCheckInventory == true) {
    String passProcessPayment = await processPayment();
    print(passProcessPayment);
    String passConfirmOrder = await confirmOrder();
    print(passConfirmOrder);
    return 'end process';
  }
  return "Product out of stock";
}

void main(List<String> args) async {
  String passPlaceOrder = await placeOrder(1);
  print(passPlaceOrder);
}

// //! Giải bài tập
// //? Hàm đặt hàng
// Future<String> placeOrder(String product) async {
//   // Bước 1: Kiểm tra hàng tồn kho
//   bool inStock = await checkInventory(product);

//   if (!inStock) {
//     return 'Product out of stock';
//   }

//   // Bước 2: Xử lý thanh toán
//   String paymentStatus = await processPayment(product);
//   print(paymentStatus);

//   // Bước 3: Xác nhận đơn hàng
//   String confirmation = await confirmOrder(product);
//   return confirmation;
// }
// // Hàm xử lý thanh toán
// Future<String> processPayment(String product) async {
//   print('Xử lý thanh toán cho sản phẩm: $product...');
//   await Future.delayed(Duration(seconds: 2));
//   // Giả lập thanh toán thành công
//   return 'Payment Successful';
// }
// //? Hàm xác nhận đơn hàng
// Future<String> confirmOrder(String product) async {
//   print('Xác nhận đơn hàng cho sản phẩm: $product...');
//   await Future.delayed(Duration(seconds: 1));
//   // Giả lập xác nhận đơn hàng thành công
//   return 'Order Confirmed';
// }
// void main() async {
//   print('Bắt đầu đặt hàng...');

//   // Đặt hàng cho sản phẩm "Laptop"
//   String orderStatus = await placeOrder('Laptop');
//   print(orderStatus);

//   print('Kết thúc đặt hàng');
// }