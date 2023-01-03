void main(List<String> args) {
  List<int> myList = [1, 2, 3];
  final firstElements = myList[0];

  final myList2 = [1, 2, 3];
  <int>[1, 2, 3];
  Map<String, dynamic> myMap = {
    'name': 'John Doe',
    'age': 42,
    'registered': true,
  };

  final name = myMap['name'];

  Set<int> mySet = {1, 2, 3};
  print(mySet.length);

  final names = ['John', 'Jane', 'Joseph'];

  // final nameLength = names.map((name) => name.length).toList();

  final namesFiltered = names.where((name) => name.length == 4).toList();

  print(namesFiltered);

  // we can also use loos to achieve the code above

  for (int i = 0; i < namesFiltered.length; i++) {
    print(names[i]);
  }

  // can use another way of for loop
  print('');
  for (final name in namesFiltered) {
    print(name);
  }

  print('');
  namesFiltered.forEach(
      (name) => print(name)); // this print out every details in namesFiltered

  // we can also create another string list like this

  bool isSignedIn = true;
  final isisf = <String>[
    // we can use if statement inside a list

    'This is a fake content',
    if (isSignedIn) 'sign Out' else 'sign in ',
  ];

  print(isisf);
  // we can also have a for loop inside a List

  final iterate = <String>[
    for (int i = 0; i < 5; i++) i.toString(),
    for (final number in [1, 2, 3])
      number.toString(), // we can also make use of this
  ];
  print(iterate);

// to combine list using spread operator using three dots ...

  final list1 = ['hello', 'there'];
  final list2 = ['whats up? ' 'buddy'];

  var combinedList = <String>[
    ...list1,
    ...list2,
  ];

  print(combinedList);
}
