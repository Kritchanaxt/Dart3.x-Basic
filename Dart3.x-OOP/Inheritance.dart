// สร้าง class
class Employee {
  // private property
  String? _name;
  int? _salary;

  // static property
  static int count = 10;

  // parameters constructor
  Employee(this._name, this._salary);

  // method
  void showDetail() {
    print("\nรายละเอียดของพนักงาน");
    print("ชื่อ = ${this._name}");
    print("เงินเดือน = ${this._salary}");
    print("-------------------");
  }

  //static method
  static void information() {
    print("\nบริษัท หมูกรอบ จำกัด");
    print("ที่ตั้ง: อุดรธานี");
    print("ติดต่อซ 0997778888");
    print("-------------------");
  }
  static void showFounder(String founder) {
    print("สวัสดี ${founder}");
  }

  // Getter
  String getName() { // default
    return this._name!; 
  }
  
  String get name => this._name!; // short
  int get salary => this._salary!; 

  // Setter
  void setSalary(int salary) {
    this._salary = salary;
  }
  set name(String value) => this._name = value;
  set salary(int value) => this._salary = value;
}

//* Inheritance Employee -> Manger, Developer
// คลาสลูก (Child Class) - Manager
class Manager extends Employee {
  String department;

  Manager(String name, int salary, this.department) : super(name, salary);

  void showManagerInfo() {
    print("\n👨‍💼 ข้อมูลผู้จัดการ");
    showDetail(); // เรียกใช้เมทอดจากคลาสแม่
    print("แผนก: $department");
    print("-------------------");
  }
}

//คลาสลูก (Child Class) - Developer
class Developer extends Employee {
  String language;

  Developer(String name, int salary, this.language) : super(name, salary);

  void showDeveloperInfo() {
    print("\n👨‍💻 ข้อมูลนักพัฒนา");
    showDetail(); // เรียกใช้เมทอดจากคลาสแม่
    print("ภาษาโปรแกรมที่ใช้: $language");
    print("-------------------");
  }
}


void main() {
   // เรียกใช้ Static Method จากคลาสแม่
  Employee.information();
  Employee.showFounder("Got");

  // สร้าง Object ของ Manager
  Manager manager1 = Manager("John Doe", 75000, "IT");
  manager1.showManagerInfo();

  // สร้าง Object ของ Developer
  Developer dev1 = Developer("Alice", 50000, "Dart");
  dev1.showDeveloperInfo();

}