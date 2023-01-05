// class can also contain arguments

class User {
  final String firstName;
  final String lastName;

  User({required this.firstName, required this.lastName});

  String getFullName() => '$firstName $lastName';

  String get fullName => '$firstName $lastName';
}

void main(List<String> args) {
  final user = User(firstName: 'John', lastName: 'Doe');
  user.getFullName();
  user.fullName;
  user.firstName;
}
