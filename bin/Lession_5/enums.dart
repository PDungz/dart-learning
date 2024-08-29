// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Enum
//! 1. Khi nào sử dụng Enum?
// Bạn có thể sử dụng enum khi bạn muốn làm việc với một nhóm các giá trị cố định
// chẳng hạn như các trạng thái, tùy chọn hoặc loại dữ liệu cụ thể
//? Ví dụ:
//? - nếu bạn muốn biểu thị các hướng của la bàn (Bắc, Nam, Đông, Tây),
//? - các ngày trong tuần,
//? - hoặc trạng thái của một quy trình (Đang chạy, Tạm dừng, Hoàn thành).
//! 2. Định nghĩa Enum trong Dart
// Enum trong Dart được định nghĩa bằng cách sử dụng từ khóa enum,
// theo sau là tên của enum và danh sách các giá trị của nó.
//! 3. Sử dụng Enum
// void main() {
//   // duyệt qua tất cả các giá trị của một enum bằng cách sử dụng thuộc tính values.
//   for (var direction in CompassDirection.values) {
//     print(direction);
//   }

//   // Enum cũng như class, có thể làm một kiểu dữ liệu
//   CompassDirection direction = CompassDirection.east;

//   switch (direction) {
//     // truy cập các giá trị của enum bằng cách
//     // sử dụng cú pháp EnumName.ValueName, như CompassDirection.north.
//     case CompassDirection.north:
//       print('Heading North');
//       break;
//     case CompassDirection.south:
//       print('Heading South');
//       break;
//     case CompassDirection.east:
//       print('Heading East');
//       break;
//     case CompassDirection.west:
//       print('Heading West');
//       break;
//   }
// }

// enum CompassDirection { north, south, east, west }

// //! Nâng cấp Enum
// 2 kĩ thuật cơ bản để nâng cấp enum đó là getter và method
// enum VehicleType {
//   bike,
//   car,
//   bus,
//   truck,
//   train;

//   bool get canRunOnHighway {
//     switch (this) {
//       case VehicleType.car:
//       case VehicleType.bus:
//       case VehicleType.truck:
//         return true;
//       default:
//         return false;
//     }
//   }

//   String titleInSpecific(bool isVn) {
//     switch (this) {
//       case VehicleType.bike:
//         return isVn ? "Xe máy" : "Bike";
//       case VehicleType.car:
//         return isVn ? "Ô tô" : "Car";
//       case VehicleType.bus:
//         return isVn ? "Xe buýt" : "Bus";
//       case VehicleType.truck:
//         return isVn ? "Xe tải" : "Truck";
//       case VehicleType.train:
//         return isVn ? "Tàu lửa" : "Train";
//     }
//   }
// }

// class Car extends Vehicle {
//   final int seatCount;
//   Car({required this.seatCount, required super.odometer, required super.type});

//   @override
//   void moveForward(int meter) {
//     print("The car move forwarad $meter meters");
//   }
// }

// abstract class Vehicle {
//   int odometer;
//   VehicleType type;
//   Vehicle({
//     required this.odometer,
//     required this.type,
//   });

//   void moveForward(int meter);
// }

// void main(List<String> args) {
//   final car = Car(seatCount: 5, odometer: 5, type: VehicleType.car);

//   if (car.type.canRunOnHighway) {
//     print('${car.type.titleInSpecific(true)} có thể chạy trên cao tốc');
//   }
// }

//! Bài tập: Quản lý trạng thái đặt hàng
//? Yêu cầu:

//? 1. Tạo một enum có tên là OrderStatus để đại diện cho các trạng thái của một đơn hàng,
// bao gồm:
//  - pending (đang chờ xử lý)
//  - processed (đã xử lý)
//  - shipped (đã giao hàng)
//  - delivered (đã giao hàng thành công)
//  - cancelled (đã hủy)
//? 2. Tạo một lớp Order để biểu diễn đơn hàng, với các thuộc tính sau:
// - id (số ID của đơn hàng)
// - status (trạng thái của đơn hàng, sử dụng OrderStatus)
//? 3. Tạo phương thức updateStatus trong lớp Order để cập nhật trạng thái của đơn hàng.
//? 4. Trong phương thức main(), tạo một đối tượng Order,
//  hiển thị trạng thái ban đầu của đơn hàng,
//  sau đó cập nhật trạng thái của đơn hàng
//  qua các bước processed, shipped, và delivered.
//  Cuối cùng, hiển thị trạng thái cuối cùng của đơn hàng.
//? Khi bạn chạy chương trình, kết quả sẽ trông giống như sau
// Initial status of Order 1: OrderStatus.pending
// Order 1 status updated to OrderStatus.processed
// Order 1 status updated to OrderStatus.shipped
// Order 1 status updated to OrderStatus.delivered
// Final status of Order 1: OrderStatus.delivered

// enum OrderStatus { pending, processed, shipped, delivered, cancelled }

// class Order {
//   final int _id;
//   OrderStatus _status;
//   Order(
//     this._id,
//     this._status,
//   );

//   void updateStatus(OrderStatus status) {
//     _status = status;
//   }
// }

// void main(List<String> args) {
//   final item = Order(1, OrderStatus.pending);

//   print("Initial status of Order 1: ${item._status}");

//   item.updateStatus(OrderStatus.processed);
//   print("1 status updated to ${item._status}");

//   item.updateStatus(OrderStatus.shipped);
//   print("1 status updated to ${item._status}");

//   item.updateStatus(OrderStatus.delivered);
//   print("1 status updated to ${item._status}");

//   item.updateStatus(OrderStatus.delivered);
//   print("Final status of Order 1: ${item._status}");
// }

// Bước 1: Tạo enum OrderStatus để đại diện cho các trạng thái của đơn hàng
enum OrderStatus { pending, processed, shipped, delivered, cancelled }

// Bước 2: Tạo lớp Order biểu diễn đơn hàng
class Order {
  int id;
  OrderStatus status;

  // Constructor
  Order(this.id, this.status);

  // Bước 3: Phương thức cập nhật trạng thái của đơn hàng
  void updateStatus(OrderStatus newStatus) {
    status = newStatus;
    print('Order $id status updated to $status');
  }
}

void main() {
  // Bước 4: Tạo đối tượng Order và hiển thị trạng thái ban đầu
  Order order = Order(1, OrderStatus.pending);
  print('Initial status of Order ${order.id}: ${order.status}');

  // Cập nhật trạng thái của đơn hàng qua các bước
  order.updateStatus(OrderStatus.processed);
  order.updateStatus(OrderStatus.shipped);
  order.updateStatus(OrderStatus.delivered);

  // Hiển thị trạng thái cuối cùng
  print('Final status of Order ${order.id}: ${order.status}');
}
