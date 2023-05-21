import 'dart:io';

void main() {
    Map<String, String> addressBook = {};

    while (true) {
        print('Enter a command (add, view, delete, exit):');
        String command = stdin.readLineSync()!.toLowerCase();

        if (command == 'add') {
            print('Enter name:');
            String name = stdin.readLineSync()!;
            print('Enter address:');
            String address = stdin.readLineSync()!;
            addressBook[name] = address;
            print('Enter phone number:');
            String phone = stdin.readLineSync()!;
            addressBook[name] = phone;
            print('Enter email adress:');
            String email = stdin.readLineSync()!;
            addressBook[name] = email;
        }

        else if (command == 'phone') {
            print('Enter phone number:');
            String name = stdin.readLineSync()!;
            if (addressBook.containsKey(name)) {
                print('${name}: ${addressBook[name]}');
            } else {
                print('Name not found.');
            }
        }

        else if (command == 'email') {
            print('Enter email adress:');
            String name = stdin.readLineSync()!;
            if (addressBook.containsKey(name)) {
                print('${name}: ${addressBook[name]}');
            } else {
                print('Name not found.');
            }
        }




        else if (command == 'view') {
            print('Enter name:');
            String name = stdin.readLineSync()!;
            if (addressBook.containsKey(name)) {
                print('${name}: ${addressBook[name]}');
            } else {
                print('Name not found.');
            }
        }



        else if (command == 'delete') {
            print('Enter name:');
            String name = stdin.readLineSync()!;
            if (addressBook.containsKey(name)) {
                addressBook.remove(name);
                print('${name} has been removed.');
            } else {
                print('Name not found.');
            }
        }




        else if (command == 'exit') {
            break;
        } else {
            print('Invalid command.');
        }
    }
}
