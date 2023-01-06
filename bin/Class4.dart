// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meta/meta.dart';
import 'package:riverpod/riverpod.dart';

void main(List<String> args) {
  final admin = Admin(
    firstName: "John",
    lastName: "Doe",
    specialAdminField: 123,
  );

  //print(admin.fullName);
  final user = admin as User;
  print(user.fullName);
  print(user is Admin);
  print(user is! Admin);

  if (user is Admin) {
    user.specialAdminField;
  }
}

// making user Abstract
abstract class User {
  final String _firstName;
  final String _lastName;

  User(this._firstName, this._lastName);

  // lets talk about factory
  // factory User.admin(bool admin) {
  //   // you can pass a logic inside here
  //   if (admin) {
  //     return Admin(specialAdminField: 123, firstName: "Musk", lastName: "Rust");
  //   } else {
  //     return User("Robert", "Lens");
  //   }
  // }

  String get fullName => '$_firstName $_lastName';

  @mustCallSuper
  void signOut() {
    print('Signing Out');
  }

  // lets create a void method

  void myMethod();
  int get myProperty;
}

class Admin extends User {
  final double specialAdminField;

  Admin({
    required this.specialAdminField,
    required String firstName,
    required String lastName,
  }) : super(firstName, lastName);

  @override
  String get fullName => 'Admin: ${super.fullName}';

  @override
  void signOut() {
    print('performing admin specific sign out steps ');

    super.signOut();
  }

  @override
  void myMethod() {}
  @override
  int get myProperty => throw UnimplementedError();
}
