void main() {
  //* สร้าง Map
  Map<String, int> products = { // key ห้ามซ้ำกัน
    "Ipad": 3,
    "Mouse": 4,
    "Keyboard": 5
  };
  print(products);

  //* เข้าถึงข้อมูล
  print(products["Ipad"]);
  print("\n");

  //* แก้ไขข้อมูล
  products["Ipad"] = 0;
  print(products);
  print("\n");

  //* เพิ่มข้อมูลใหม่
  products["Iphone"] = 6;
  print(products);
  print("\n");

  //* ลบข้อมูล
  products.remove("Mouse");
  print(products);
  print("\n");

  //* property
  print(products.length);
  print(products.keys);
  print(products.keys.toList());
  print(products.values);
  print(products.isEmpty);
  print("\n");

  //* ตัวอย่างการใช้ Map
  Map<bool, String> confirm = {
    true: "OK",
    false: "Cancel"
  };
  print(confirm[true]);
  print(confirm[false]);
  print("\n");

  Map<String, String> currency = {
    "THB": "บาท",
    "USD": "ดอลล่า",
    "GBP": "ปอนด์"
  };
  print(currency["GBP"]);
  print(currency["THB"]);
  print(currency["USD"]);
  print("\n");

   Map<int, String> numbers = {
    1: "เลขหนึ่ง",
    100: "หนึ่งร้อยถ้วน",
    1000: "หนึ่งพันถ้วน"
  };
  print(numbers[1000]);
  print(numbers[100]);
  print(numbers[1]);
  print("\n");

}