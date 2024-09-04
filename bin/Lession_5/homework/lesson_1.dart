// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Bài tập 1: Sử dụng Mixin với Tính Toán Logic

//? Bạn sẽ tạo một chương trình để quản lý các xe cộ trong một cuộc đua. Mỗi loại xe có
//thể có các thuộc tính như tốc độ và khả năng tăng tốc.

//? Bạn sẽ sử dụng mixin để tính toán thời gian hoàn thành cuộc đua và khoảng cách mà
//xe có thể di chuyển dựa trên các thuộc tính của nó.

//? Yêu cầu:
// * Tạo mixin HasSpeed có thuộc tính double speed với phương thức double calculateTime(double distance)
//để tính toán thời gian hoàn thành cuộc đua dựa trên khoảng cách và tốc độ.
// * Tạo mixin HasAcceleration có thuộc tính double acceleration với phương thức double
//calculateDistance(double time) để tính toán khoảng cách di chuyển được dựa trên gia tốc và thời gian.
// * Tạo lớp RaceCar sử dụng mixin HasSpeed, kế thừa thuộc tính speed.
// * Tạo lớp JetCar, sử dụng 2 mixin  HasSpeed và HasAcceleration,kế thừa các thuộc tính speed và acceleration.
// * Trong main(), tạo đối tượng RaceCar và JetCar, sau đó tính toán thời gian hoàn thành cuộc đua
//và khoảng cách di chuyển của từng xe.
//? Giải thích:
// * RaceCar: Sử dụng mixin HasSpeed để tính toán thời gian hoàn thành cuộc đua dựa trên tốc độ.
// * JetCar: Sử dụng cả mixin HasSpeed và HasAcceleration để tính toán cả thời gian hoàn thành
//cuộc đua và khoảng cách di chuyển dựa trên gia tốc.
// * calculateTime sử dụng công thức thời gian = quãng đường / tốc độ,
// * calculateDistance sử dụng công thức khoảng cách = 0.5 * gia tốc * thời gian * thời gian.

// Mixin HasSpeed có thuộc tính speed và phương thức calculateTime
mixin HasSpeed {
  double speed = 0.0;

  double calculateTime(double distance) {
    // Thời gian = quãng đường / tốc độ
    if (speed > 0) {
      return distance / speed;
    } else {
      throw Exception("Speed must be greater than 0.");
    }
  }
}

// Mixin HasAcceleration có thuộc tính acceleration và phương thức calculateDistance
mixin HasAcceleration {
  double acceleration = 0.0;

  double calculateDistance(double time) {
    // Quãng đường = 0.5 * gia tốc * thời gian^2
    return 0.5 * acceleration * time * time;
  }
}

// Lớp RaceCar sử dụng mixin HasSpeed
class RaceCar with HasSpeed {
  RaceCar(double speed) {
    this.speed = speed;
  }
}

// Lớp JetCar sử dụng cả mixin HasSpeed và HasAcceleration
class JetCar with HasSpeed, HasAcceleration {
  JetCar(double speed, double acceleration) {
    this.speed = speed;
    this.acceleration = acceleration;
  }
}

void main() {
  // Tạo đối tượng RaceCar với tốc độ
  RaceCar raceCar = RaceCar(150.0); // Tốc độ: 150 km/h
  double raceDistance = 300.0; // Quãng đường đua: 300 km

  // Tính toán thời gian hoàn thành cuộc đua cho RaceCar
  double raceCarTime = raceCar.calculateTime(raceDistance);
  print(
      "RaceCar sẽ hoàn thành cuộc đua trong ${raceCarTime.toStringAsFixed(2)} giờ.");

  // Tạo đối tượng JetCar với tốc độ và gia tốc
  JetCar jetCar = JetCar(200.0, 10.0); // Tốc độ: 200 km/h, Gia tốc: 10 m/s^2
  double jetCarTime = jetCar.calculateTime(raceDistance);

  // Tính toán thời gian hoàn thành cuộc đua cho JetCar
  print(
      "JetCar sẽ hoàn thành cuộc đua trong ${jetCarTime.toStringAsFixed(2)} giờ.");

  // Tính toán quãng đường di chuyển của JetCar với gia tốc
  double time = 5.0; // Thời gian di chuyển: 5 giây
  double jetCarDistance = jetCar.calculateDistance(time);
  print(
      "JetCar có thể di chuyển ${jetCarDistance.toStringAsFixed(2)} mét trong $time giây với gia tốc ${jetCar.acceleration} m/s^2.");
}
