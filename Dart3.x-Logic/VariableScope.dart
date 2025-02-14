
int balance = 5000; // Global variable

void main() {
  showBalance();

  deposit(1000);
  showBalance();

  withdraw(500);
  showBalance();
}

void showBalance() {
  print("\nยอดเงินคงเหลือในบัญชี = $balance บาท\n");
}

void deposit(int amount) { // ฝากเงิน
  int value = amount; // Local Variables
  print("ฝากเงินจำนวน $value บาท");
  balance += value;
}

void withdraw(int amount) { // ถอนเงิน
  int value = amount; // Local Variables
  print("ถอนเงินจำนวน $value บาท");
  balance -= value;
}
