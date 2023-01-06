// ignore_for_file: public_member_api_docs, sort_constructors_first
// lets talk about equality

class User {
  final String firstName;
  final String lastName;

  const User({
    required this.firstName,
    required this.lastName,
  });

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.firstName == firstName && other.lastName == lastName;
  }
  // we generate an override to make sure user1 is equal to user2

  @override
  int get hashCode => firstName.hashCode ^ lastName.hashCode;
}

// main function
void main(List<String> args) {
  final user1 = User(firstName: 'John', lastName: 'Doe');
  final user2 = User(firstName: 'John', lastName: 'Doe');

  print(user1 == user2); // this will give you false
}
