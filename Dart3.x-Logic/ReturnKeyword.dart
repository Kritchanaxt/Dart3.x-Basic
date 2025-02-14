
int balance = 5000; // Global variable

void main() {
  showBalance();
  deposit(1000);
  withdraw(7000);
  showBalance();
}


void showBalance() {
  print("\nยอดเงินคงเหลือในบัญชี = $balance บาท\n");
}

void deposit(int amount) { // ฝากเงิน
  int value = amount; 
  print("ฝากเงินจำนวน $value บาท");
  balance += value;
  showBalance();

}

void withdraw(int amount) { // ถอนเงิน
  int value = amount; 
  print("ถอนเงินจำนวน $value บาท");
  if (value > balance) {
    print("ไม่สามารถถอนเงินได้, ยอดเงินในบัญชีไม่พอ");
    return;
  }
  balance -= value;
  showBalance();

}
