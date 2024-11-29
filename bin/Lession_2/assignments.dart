void main(List<String> args) {
  // ### **1. Toán tử đơn hậu tố**
  // **Bài tập:**
  // Viết chương trình yêu cầu người dùng nhập một số nguyên. Sau đó:
  // - Tăng giá trị của số đó lên 1 bằng cách sử dụng toán tử hậu tố `++`.
  // - In ra kết quả sau khi tăng.
  // - Tiếp tục giảm giá trị xuống 1 bằng toán tử hậu tố `--`.
  // - In ra kết quả cuối cùng.
  // print("Nhap n la:  ");
  // int n = int.parse(stdin.readLineSync()!);
  // n++;
  // print("Tang gia tri cua so do len 1 bang ++ la: $n");
  // n--;
  // print("Tang gia tri cua so do len 1 bang ++ la: $n");

  // ### **2. Toán tử phủ định và phủ định bit**
  // **Bài tập:**
  // Viết chương trình thực hiện các thao tác sau:
  // - Nhập một số nguyên từ người dùng.
  // - Lấy giá trị phủ định của số đó.
  // - Kiểm tra và in kết quả phủ định bit của giá trị Boolean `true`.
  // print("Nhap n la:  ");
  // int n = int.parse(stdin.readLineSync()!);
  // print("Lay gia tri phu dinh cua so do la: ${-n}");
  // bool isTrue = false;
  // print("Kiểm tra và in kết quả phủ định bit ${!isTrue}");

  // ### **3. So sánh `++e` và `e++`**
  // **Bài tập:**
  // Viết chương trình minh họa sự khác biệt giữa `++e` và `e++`. Yêu cầu:
  // - Nhập một số nguyên ban đầu.
  // - Sử dụng `e++` trong một phép gán và in giá trị sau gán.
  // - Sử dụng `++e` trong một phép gán khác và in giá trị sau gán.

  // ### **4. Toán tử cộng, trừ, nhân, chia**
  // **Bài tập:**
  // Viết chương trình yêu cầu người dùng nhập hai số nguyên. Sau đó:
  // - Tính và in ra kết quả của các phép tính: cộng, trừ, nhân, chia, chia lấy phần nguyên, và lấy phần dư.

  // ### **5. Toán tử so sánh**
  // **Bài tập:**
  // Viết chương trình yêu cầu nhập vào hai số nguyên. Sau đó:
  // - So sánh hai số bằng các toán tử `>`, `<`, `>=`, `<=`.
  // - Kiểm tra xem hai số có bằng nhau hoặc khác nhau không.

  // ### **6. Toán tử kiểm tra null**
  // **Bài tập:**
  // Viết chương trình yêu cầu người dùng nhập vào một chuỗi.
  // - Nếu chuỗi nhập vào là `null`, gán cho chuỗi giá trị mặc định là `"Không có giá trị"` bằng cách sử dụng toán tử `??`.
  // - In kết quả ra màn hình.

  // ### **7. Toán tử ba ngôi**
  // **Bài tập:**
  // Viết chương trình yêu cầu người dùng nhập vào một số nguyên.
  // - Sử dụng toán tử ba ngôi để kiểm tra nếu số đó là số chẵn thì in ra `"Số chẵn"`, ngược lại in ra `"Số lẻ"`.

  // ### **8. Toán tử gán**
  // **Bài tập:**
  // Viết chương trình yêu cầu người dùng nhập vào một số nguyên. Sau đó:
  // - Tăng số đó lên 10 bằng toán tử `+=`.
  // - Nhân số đó với 2 bằng toán tử `*=`.
  // - In kết quả sau cùng.

  // ### **9. Sử dụng `if`, `else if`, và `else`**
  // **Bài tập:**
  // Viết chương trình yêu cầu người dùng nhập số tuổi và in ra thông báo:
  // - `"Bạn là trẻ em"` nếu tuổi nhỏ hơn 13.
  // - `"Bạn là thanh thiếu niên"` nếu tuổi từ 13 đến 17.
  // - `"Bạn là người lớn"` nếu tuổi từ 18 trở lên.

  // ### **10. Sử dụng `switch-case`**
  // **Bài tập:**
  // Viết chương trình yêu cầu người dùng nhập vào một ngày trong tuần (từ `1` đến `7`).
  // - Nếu ngày là `1`, in `"Thứ Hai"`.
  // - Nếu ngày là `2`, in `"Thứ Ba"`, v.v.
  // - Nếu nhập ngoài khoảng `1-7`, in `"Ngày không hợp lệ"`.

  // ### **11. Vòng lặp for**
  // **Bài tập:**
  // Viết chương trình in ra bảng cửu chương từ `1` đến `9` bằng vòng lặp `for`.

  // ### **12. Vòng lặp while**
  // **Bài tập:**
  // Viết chương trình yêu cầu người dùng nhập vào một số nguyên dương.
  // - Sử dụng vòng lặp `while` để tính tổng tất cả các số từ `1` đến số đó.
  // - In kết quả ra màn hình.

  // ### **13. Vòng lặp do-while**
  // **Bài tập:**
  // Viết chương trình yêu cầu người dùng nhập một số nguyên dương.
  // - Nếu số nhập vào nhỏ hơn hoặc bằng `0`, yêu cầu nhập lại.
  // - Chỉ thoát khỏi vòng lặp khi người dùng nhập vào số lớn hơn `0`.

  // ### **14. Xử lý ngoại lệ**
  // **Bài tập:**
  // Viết chương trình yêu cầu người dùng nhập vào hai số nguyên. Sau đó:
  // - Chia số thứ nhất cho số thứ hai.
  // - Xử lý ngoại lệ nếu người dùng nhập số thứ hai là `0` và in ra thông báo lỗi.

  // Bạn hãy thực hiện từng bài tập để rèn luyện và củng cố kiến thức nhé!
  try {
    int n = 1 ~/ 0;
    print(n);
  } catch (e) {
    print("Exception: $e");
  }
}
