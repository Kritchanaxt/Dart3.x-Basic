// สร้าง class
class Employee {
  // private property
  String? _name;
  int? _salary;

  // parameters constructor
  Employee(this._name, this._salary);

  // method
  void showDetail() {
    print("\nรายละเอียดของพนักงาน");
    print("ชื่อ = ${this._name}");
    print("เงินเดือน = ${this._salary}");
    print("-------------------");
  }

  //* Getter
  String getName() { // default
    return this._name!; 
  }
  
  String get name => this._name!; // short
  int get salary => this._salary!; 

  //* Setter
  void setSalary(int salary) {
    this._salary = salary;
  }
  set name(String value) => this._name = value;
  set salary(int value) => this._salary = value;
}

void main() {
  // สร้าง object 
  Employee emp1 = Employee("John Doe", 50000);

  //* เรียกใช้ Getter
  print("ชื่อพนักงาน: ${emp1.name}");  
  print("เงินเดือน: ${emp1.salary} บาท");

  //* เรียกใช้ Setter เพื่อเปลี่ยนค่า
  emp1.name = "John";
  emp1.salary = 60000;

  //* เรียกใช้ Getter อีกครั้งเพื่อตรวจสอบค่าใหม่
  print("\n--- หลังจากอัปเดต ---");
  print("ชื่อพนักงาน: ${emp1.name}");  
  print("เงินเดือน: ${emp1.salary} บาท");

  //* ❌ ทดสอบ Setter ใส่เงินเดือนติดลบ (ระบบจะป้องกัน)
  emp1.salary = -5000;  // เงินเดือนจะไม่ถูกเปลี่ยน
}