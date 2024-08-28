//! Bài tập 3: Hệ thống Quản lý Sản phẩm với Đóng gói và Kế thừa
//? Yêu cầu:

// - Tạo lớp Product với các thuộc tính id, name, và price. Sử dụng private để bảo vệ thuộc tính và cung cấp các phương thức getter/setter.
// - Tạo lớp PerishableProduct (đồ dễ hỏng) kế thừa từ Product, bổ sung thêm thuộc tính expiryDate (hạn sử dụng) với data type là Datetime.
// - Viết một phương thức để hiển thị thông tin sản phẩm, bao gồm việc kiểm tra hạn sử dụng nếu sản phẩm là PerishableProduct. Nếu sản phẩm hết hạn thì thông báo là sản phẩm đã hết hạn (Gợi ý: So sánh Datetime của sản phẩm với thời gian hiện tại Datetime.now())

//? Đặc tính OOP:
// - Đóng gói: Sử dụng thuộc tính private và getter/setter.
// - Kế thừa: Lớp PerishableProduct kế thừa từ Product và chia sẻ các thuộc tính và phương thức chung.

class Product {
  String _id;
  String _name;
  double _price;
  Product(
    this._id,
    this._name,
    this._price,
  );

  String get getId => _id;

  set setId(String id) {
    _id = id;
  }

  String get getName => _name;

  set setName(String name) {
    _name = name;
  }

  double get getPrice => _price;

  set setPrice(double price) {
    _price = price;
  }
}

class PerishableProduct extends Product {
  DateTime _expiryDate;

  PerishableProduct(super.id, super.name, super.price, this._expiryDate);

  DateTime get getExpiryDate => _expiryDate;

  set setExpiryDate(DateTime expiryDate) {
    _expiryDate = expiryDate;
  }

  void showPerishableProduct() {
    print("Thong tin san pham:");
    print("Id: $_id");
    print("Name: $_name");
    print("Price: $_price");
    if (_expiryDate.isAfter(DateTime.now()) ||
        _expiryDate.isAtSameMomentAs(DateTime.now())) {
      print("ExpiryDate: $_expiryDate");
    } else {
      print("San pham het han!");
    }
  }
}

void main(List<String> args) {
  // Tạo danh sách sản phẩm
  List<Product> products = [
    PerishableProduct("1", "Cookies", 100, DateTime(2024, 8, 28))
  ];

  // Hiển thị thông tin của sản phẩm PerishableProduct
  for (var product in products) {
    if (product is PerishableProduct) {
      product.showPerishableProduct();
    }
  }
}
