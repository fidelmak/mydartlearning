void main(List<String> args) {
  List<int> myList = [1, 2, 3];
  final firstElements = myList[0];

  final myList2 = [1, 2, 3];
  <int>[1, 2, 3];

  //this ia a map of strings with dynamic parameter
  Map<String, dynamic> myMap = {
    'name': 'john Doe',
    'age': 42,
    'registered': true,
  };
// accessing the name of map myMap
  final name = myMap['name'];

  // we also have set of integers numbers
  Set<int> mySet = {1, 2, 3};

  print(mySet.length);
  print(name);

  // we can map or try to print out the lists of names
  final names = [
    'John',
    'Jane',
    'Joseph',
    'Paul',
    'Femi',
    'dupe',
    'oredolar',
    'deji',
    'tope'
  ];

  final nameLength = names.map((name) => name.length).toList();
  print(nameLength);
  print("");

  // we can use filter to print out all the values of names

  final namesFiltered = names.where((name) => name.length > 2).toList();

  print(namesFiltered);

  // we can also loop to achieve the code above

  for (int i = 0; i < namesFiltered.length; i++) {
    print(names[i]);
  }

  ;
  print("");

  // we can also make use of forEach Loop

  namesFiltered.forEach((name) => print(name));

  // we can also create another lists of string like this
  print('');
  print('');

  bool isSignedIn = true; // declaring a boolean

  final isf = <String>[
    'this is a fake content',
    if (isSignedIn) 'sign Out' else 'sign in ',
  ];
  print(isf);

  print("");

  //we can also have a for loop inside a list
}
