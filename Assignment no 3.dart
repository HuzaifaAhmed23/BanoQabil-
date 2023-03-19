// Q1 Create a Vehicle class with brand, model, and year properties, and a method called drive() that prints a message indicating that the vehicle is being driven.Then create a Car class that inherits from Vehicle and has a numDoors property. Override the drive() method in the Car class to print a message that includes the number of doors.


class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void drive() {
    print('$brand $model ($year) is being driven.');
  }
}

class Car extends Vehicle {
  int numDoors;

  Car(String brand, String model, int year, this.numDoors)
      : super(brand, model, year);

  @override
  void drive() {
    print('$brand $model ($year) with $numDoors doors is being driven by a racer in Dubai and got 2nd position.');
  }
}

void main() {
  Car myCar = Car('TOYOTA', 'SUPRA ', 2002, 2);
  myCar.drive();
}

// Q2. Create a BankAccount class with balance and accountNumber properties, and methods called deposit() and withdraw() that modify the balance property. Then create a CheckingAccount class that inherits from BankAccount and has a transactionLimit property. Override the withdraw() method in the CheckingAccount class to check if the withdrawal amount is within the transaction limit before modifying the balance property.              


class BankAccount {
  double balance;
  int accountNumber;

  BankAccount(this.balance, this.accountNumber);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    balance -= amount;
  }
}

class CheckingAccount extends BankAccount {
  double transactionLimit;

  CheckingAccount(double balance, int accountNumber, this.transactionLimit)
      : super(balance, accountNumber);

  @override
  void withdraw(double amount) {
    if (amount <= transactionLimit) {
      balance -= amount;
    } else {
      print('Withdrawal amount exceeds transaction limit.');
    }
  }
}

void main() {
  CheckingAccount myAccount = CheckingAccount(5000.0, 576358, 1000.0);
  print('Initial balance: \$${myAccount.balance}');
  myAccount.withdraw(1000.0);
  print('Balance after withdrawal: \$${myAccount.balance}');
}

// Q3. Create a Person class with firstName and lastName properties, and a method called fullName() that returns the full name of the person. Then create a Student class that inherits from Person and has a major property. Override the fullName() method in the Student class to include the major in the full name.

class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);

  String fullName() {
    return '$firstName $lastName';
  }
}

class Student extends Person {
  String major;

  Student(String firstName, String lastName, this.major)
      : super(firstName, lastName);

  @override
  String fullName() {
    return '$firstName $lastName ($major)';
  }
}

void main() {
  Person person = Person('Micheal', 'Sam');
  Student student = Student('Tom', 'Kim', 'MBBS');

  print('Person full name: ${person.fullName()}');
  print('Student full name: ${student.fullName()}');
}
