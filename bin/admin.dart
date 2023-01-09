void main(List<String> args) {
  final bot = ChatBot("124");
  // bot as ElevateClient;
  bot.SendElevateMessage("Hello");
  Admin(firstName: "a", lastName: 'b', specialAdminField: 123)
      .SendElevateMessage("Hello");
}

class User {
  final String firstName;
  final String lastName;

  User(this.firstName, this.lastName);

  // void SendElevateMessage(String text) {
  //   print('sending message with an elevate importance:$text');
  // }
}

class ElevateClient {
  void SendElevateMessage(String text) {
    print('sending message with an elevate importance:$text');
  }
}

class Admin extends User with ElevateClient {
  final double specialAdminField;
  Admin({
    required this.specialAdminField,
    required String firstName,
    required String lastName,
  }) : super(firstName, lastName);
}

class ChatBot with ElevateClient {
  final String id;

  ChatBot(this.id);
  void sendElevateMessage(String, text) {
    print('sending a message with an elevated importance:$text ');
  }
}
