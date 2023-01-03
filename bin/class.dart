void main(List<String> args) {
  // let us create our first class

  // String myString = 'something';
  // [1, 2, 3, 4];

  // instead of the above code you can invoke a contructor

  // final myUser2 = User();
  // myUser2.name = 'Jane Doe'; // you can use this code to edit the myUser2 name

  User myUser = User(
    firstName: 'Paul Fidelis',
    LastName: 'BigFidelis',
    photoUrl: 'https://example.com/abcd',
  );
  myUser.firstName = "Roar Man";
  final user2 = User(
      firstName: 'joy Paul',
      LastName: 'Fidelis',
      photoUrl: 'https://example.com/abed');

  user2.hasLongName();
}

// ..............................................................

class User {
  // String name = 'John Doe';
  // String photoUrl = 'https://example.com/abcd',

  late String firstName;
  late String photoUrl;

  // using constructor

  User({
    // required this.name,
    // required this.photoUrl,

    // instead of the above code you can also have

    required String firstName,
    required String LastName,
    required this.photoUrl,
  }); // now we have created our positional parameters and a constructor body

  // class can also hold METHODS

  bool hasLongName() {
    return firstName.length > 10;
  }

  // we can also create a static

  static void myMethod() {}
  static int minNameLength = 3;
}
