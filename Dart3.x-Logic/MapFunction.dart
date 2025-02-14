void main() {  
  //* สร้าง Map
   Map<String, int> products = { 
    "Ipad": 3,
    "Mouse": 4,
    "Keyboard": 5
  };
  print(products);
  print("\n");

  //* เพิ่มข้อมูลใน Map
  products.addAll({"Harddisk": 2, "Speaker": 1, "Monitor":3});
  print(products);
  print("\n");

  // products.clear();
  // print(products);

  //* ลบข้อมูล
  products.remove("Ipad");
  print(products);
  print("\n");

  //* วนลูปแบบ for-in
  for(var item in products.entries) {
     print(item); 
     print(item.key);
     print(item.value);  
     print("ชื่อสินค้า ${item.key} จำนวน ${item.value} รายการ");
     print("\n");
  }
  
  //* วนลูปแบบ forEach
  products.forEach((key, value) {
     print("ชื่อสินค้า ${key} จำนวน ${value} รายการ");
  });
  print("\n");

  //* ตรวจสอบข้อมูล
  print(products.containsKey("Mouse"));
  print(products.containsValue(0));
  print("\n");

}