// คลาสแม่ (Abstract Class)
abstract class Employee {
  // Private properties
  String _name;
  int _salary;

  // Static property
  static int count = 10;

  // Constructor
  Employee(this._name, this._salary);

  // Abstract Methods
  void showDetail();
  void work();

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
  String get name => _name;
  int get salary => _salary;

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

//* Mixin - Logging (พิมพ์ Log เวลามีการเปลี่ยนค่า)
mixin Logging {
  void log(String message) {
    print("📌 [LOG]: $message");
  }
}

//* Mixin - Bonus (ให้โบนัสกับพนักงาน)
mixin Bonus {
  void giveBonus(Employee employee, int amount) {
    employee.salary += amount;
    print("🎉 ${employee.name} ได้รับโบนัส $amount บาท! (เงินเดือนใหม่: ${employee.salary} บาท)");
  }
}

// คลาสลูก (Child Class) - Manager
class Manager extends Employee with Logging, Bonus {
  String department;

  Manager(String name, int salary, this.department) : super(name, salary);

  @override
  void showDetail() {
    print("\n👨‍💼 ข้อมูลผู้จัดการ");
    print("ชื่อ: $name");
    print("เงินเดือน: $salary บาท");
    print("📂 แผนก: $department");
    print("-------------------");
  }

  @override
  void work() {
    print("📊 ผู้จัดการ $name กำลังบริหารแผนก $department");
    log("ผู้จัดการ $name กำลังทำงาน");
  }
}

// คลาสลูก (Child Class) - Developer
class Developer extends Employee with Logging {
  String language;

  Developer(String name, int salary, this.language) : super(name, salary);

  @override
  void showDetail() {
    print("\n👨‍💻 ข้อมูลนักพัฒนา");
    print("ชื่อ: $name");
    print("เงินเดือน: $salary บาท");
    print("💻 ภาษาโปรแกรมที่ใช้: $language");
    print("-------------------");
  }

  @override
  void work() {
    print("💻 นักพัฒนา $name กำลังเขียนโค้ดด้วยภาษา $language");
    log("นักพัฒนา $name กำลังเขียนโค้ด");
  }
}

void main() {
  // เรียกใช้ Static Method จากคลาสแม่
  Employee.information();
  Employee.showFounder("Got");

  // สร้าง Object ของ Manager และ Override Method
  Manager manager1 = Manager("John Doe", 75000, "IT");
  manager1.showDetail();
  manager1.work();

  // สร้าง Object ของ Developer และ Override Method
  Developer dev1 = Developer("Alice", 50000, "Dart");
  dev1.showDetail();
  dev1.work();

  // ให้โบนัสกับพนักงาน (Manager เท่านั้นที่ใช้ Bonus ได้)
  manager1.giveBonus(manager1, 5000);
}