class Employee {
  String? name;
  int? salary;

  // Parameter constructor
  Employee(String? name, int? salary) {
    this.name = name;
    this.salary = salary;
  }
}

void main() {
  Employee emp2 = Employee("Jo", 20000);
  print(emp2.name);
  print(emp2.salary);
}