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

  //* static method
  static void information() {
    print("บริษัท หมูกรอบ จำกัด");
    print("ที่ตั้ง: อุดรธานี");
    print("ติดต่อซ 0997778888");
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

void main() {
  Employee.information();
  Employee.showFounder("Got");

}