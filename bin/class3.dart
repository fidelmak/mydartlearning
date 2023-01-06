// class can also contain arguments

class User {
  final String firstName;
  final String lastName;
  String? _email;

  User({
    required this.firstName,
    required this.lastName,
    required String email,
  }) {
    this.email = email;
  }

  String getFullName() => '$firstName $lastName';

  String get fullName => '$firstName $lastName';

  // since email is private , what should we do to assess it from other file
  // we should have a getter

  String get email => _email ?? 'Email not Valid';

// set the email
  set email(String value) {
    if (value.contains('@')) {
      _email = value;
    } else {
      _email = null;
    }
  }
}

// main function
void main(List<String> args) {
  final user =
      User(firstName: 'John', lastName: 'Doe', email: "tundegmail.com");

  user.getFullName();
  user.fullName;
  user.firstName;
  user.email;

  //print(user.getFullName());
  //print(user.fullName);
  print(user.email);
}
