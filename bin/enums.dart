// lets talk about enums here
// enums allows you to enumerate certain sequence

enum AccountType { free, premium, vip } // this is our first Type(data Type)

void main(List<String> args) {
  final userAccountType = AccountType.premium;
  // we can use const instead of final

  print(userAccountType
      .index); // this will yield 1 because the index of premium is 1
  final get = AccountType.values[2];
  print(get);

  // we can use switch statement
  switch (get) {
    case AccountType.free:
      print("0 usd");
      break;
    case AccountType.premium:
      print("20 usd");
      break;
    default:
      print("you are not invited");
      break;
  }
}
