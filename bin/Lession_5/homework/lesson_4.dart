//! Bài tập 4: Sử dụng thư viện trên pub.dev

//?  Sử dụng kiểu dữ liệu DateTime, Duration và thư viện date_format | Dart package

//? Tìm hiểu cách sử dụng các phương thức của DateTime và thư viện date_format | Dart package để làm các bài tập sau:

//* In DateTime thành kiểu String dễ đọc với đủ thông tin: thứ ngày tháng năm, giờ phút giây, múi giờ.
//* Viết hàm kiểm tra ngày X có phải thứ 7, chủ nhật hay không?
//* Viết hàm để tính bao nhiêu ngày nữa là đến lễ 30/4/2025

import 'package:date_format/date_format.dart';

void main(List<String> args) {
  String strDate = formatDate(DateTime.now(), [
    "Thu: ",
    'DD',
    ' - ',
    'dd',
    '/',
    'mm',
    '/',
    'yyyy',
    ' - ',
    'hh',
    ':',
    'mm',
    ':',
    'ss',
    ' - Nui gio: ',
    'z'
  ]);
  print("In ra thong tin thứ ngày tháng năm, giờ phút giây, múi giờ.");
  print(strDate);

  DateTime now = DateTime.now();
  print(
      "Viết hàm kiểm tra ngày X ${isWeekend(now) ? 'la' : 'khong phai la'} thứ 7, chủ nhật");

  print("Con bao nhieu ngay nua la den 05/09/2024 ${daysUntilNextHoliday()}");
}

bool isWeekend(DateTime dateTime) {
  return dateTime.weekday == DateTime.saturday ||
      dateTime.weekday == DateTime.sunday;
}

int daysUntilNextHoliday() {
  DateTime today =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  DateTime holiday = DateTime(2024, 9, 5);

  // print(today);
  // print(holiday);
  return holiday.difference(today).inDays;
}
