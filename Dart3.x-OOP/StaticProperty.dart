// สร้าง class
class Employee {
  // private property
  String? _name;
  int? _salary;

  //* static property
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
  print(Employee.count);
}