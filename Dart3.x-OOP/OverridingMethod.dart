// คลาสแม่ (Parent Class)
class Employee {
  // Private properties
  String? _name;
  int? _salary;

  // Static property
  static int count = 10;

  // Constructor
  Employee(this._name, this._salary);

  // Method
  void showDetail() {
    print("\n📌 รายละเอียดของพนักงาน");
    print("ชื่อ: $_name");
    print("เงินเดือน: $_salary บาท");
  }

  // Static method
  static void information() {
    print("\n🏢 บริษัท หมูกรอบ จำกัด");
    print("📍 ที่ตั้ง: อุดรธานี");
    print("📞 ติดต่อ: 0997778888");
    print("-------------------");
  }

  static void showFounder(String founder) {
    print("💡 สวัสดีคุณ $founder!");
  }

  // Getter
  String get name => _name!;
  int get salary => _salary!;

  // Setter
  set name(String value) => _name = value;
  set salary(int value) {
    if (value >= 0) {
      _salary = value;
    } else {
      print("❌ เงินเดือนต้องเป็นค่าบวกเท่านั้น!");
    }
  }
}

// คลาสลูก (Child Class) - Manager (Overriding Method)
class Manager extends Employee {
  String department;

  Manager(String name, int salary, this.department) : super(name, salary);
  
  //* Overriding Method
  @override
  void showDetail() {
    super.showDetail(); // เรียกใช้เมทอดจากคลาสแม่
    print("📂 แผนก: $department");
    print("-------------------");
  }
}

// คลาสลูก (Child Class) - Developer (Overriding Method)
class Developer extends Employee {
  String language;

  Developer(String name, int salary, this.language) : super(name, salary);

  //* Overriding Method
  @override
  void showDetail() {
    super.showDetail(); // เรียกใช้เมทอดจากคลาสแม่
    print("💻 ภาษาโปรแกรมที่ใช้: $language");
    print("-------------------");
  }
}

void main() {
  // เรียกใช้ Static Method จากคลาสแม่
  Employee.information();
  Employee.showFounder("Got");

  // สร้าง Object ของ Manager และ Overriding Method
  Manager manager1 = Manager("John Doe", 75000, "IT");
  manager1.showDetail(); // ใช้ showDetail() ที่ Override

  // สร้าง Object ของ Developer และ Overriding Method
  Developer dev1 = Developer("Alice", 50000, "Dart");
  dev1.showDetail(); // ใช้ showDetail() ที่ Override
}