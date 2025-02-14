
// Generic class
class Database<T,U> {
  var items = <T,U>{}; // <key, value>

  // Generic method
  void pushItem(T id, U value) {
    items[id] = value;
  }
}

// Generic constraints กำหนดกฏเกณฑ์
class Database2<T extends String, U extends String> {
  var items = <T,U>{}; // <key, value>

  // Generic method
  void pushItem(T id, U value) {
    items[id] = value;
  }
}

void main() {
  var obj1 = Database<int, String>(); // <T,U>
  obj1.pushItem(1, "Apple");
  obj1.pushItem(2, "Banana");
  print(obj1.items); 

  var obj2 = Database<String, String>(); // <T,U>
  obj2.pushItem("001", "Apple");
  obj2.pushItem("002", "Banana");
  print(obj2.items); 

  var obj3 = Database2(); // เรียกใช้ Generic constraints ไม่ต้องกำหนด <T,U>
  obj3.pushItem("E3", "Got");
  obj3.pushItem("E3.X", "Nindam");
  print(obj3.items); 
}
