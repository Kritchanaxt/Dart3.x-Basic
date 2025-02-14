// สร้าง class
class Employee {
  // private property
  String? _name;
  int? _salary;

  // parameters constructor
  Employee(this._name, this._salary);
  void showDetail() {
    print("\nรายละเอียดของพนักงาน");
    print("ชื่อ = ${this._name}");
    print("เงินเดือน = ${this._salary}");
    print("-------------------");
  }
}

void main() {
  // สร้าง object 
  Employee emp1 = Employee("John Doe", 50000);
  emp1.showDetail();
  Employee emp2 = Employee("Jo", 40000);
  emp2.showDetail();
}