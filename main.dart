// abstract class Human {
//   void walk();
// }

// enum Team { red, blue }

// class Player extends Human {
//   final String name;
//   int xp;
//   Team team;
//   int age;

//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//     required this.age,
//   });

//   Player.createBluePlayer({
//     required String name,
//     required int age,
//   })  : this.age = age,
//         this.name = name,
//         this.team = Team.blue,
//         this.xp = 0;

//   Player.createRedPlayer({
//     required String name,
//     required int age,
//   })  : this.age = age,
//         this.name = name,
//         this.team = Team.blue,
//         this.xp = 0;

//   Player.fromJson(Map<String, dynamic> playerJson)
//       : name = playerJson['name'],
//         xp = playerJson['xp'],
//         team = playerJson['team'],
//         age = 10;

//   void sayHello() {
//     print("Hi my name is $name");
//   }

//   void walk() {
//     print('I am walking');
//   }
// }

class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { blue, red }

class Player extends Human with Strong, QuickRunner {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print('and I play for $team');
  }
}

mixin class Strong {
  final double strengthLevel = 1500.99;
}

mixin class QuickRunner {
  void runQuick() {
    print('ruuuuuuun');
  }
}

void main() {
  var player = Player(team: Team.red, name: 'nico');
  player.sayHello();
  // print('hello world');
  // var daewon = 'daewon';
  // String? name = 'daewon';
  // name = 'wondae';
  // name = null;
  // dynamic wow;
  // final notModify = 'no';
  // late final String later;
  // const compileConst = 'compile-complete';

  // String name = 'daewon';
  // bool alive = true;
  // int age = 12;
  // double money = 9.44;

  // // List<num> numbers = [1, 2, 3, 4];
  // var giveMeFive = true;
  // var numbers = [1, 2, 3, 4, if (giveMeFive) 5];
  // print(numbers);
  // numbers.add(1);
  // numbers.last;

  // var name = 'daewon';
  // var age = 10;
  // var greeting =
  //     "Hello everyone, my name in $name and I'm ${age + 2}, nice to meet you";
  // print(greeting);

  // List<String> oldFriends = ['nico', 'lynn'];
  // var oldFriends = ['nico', 'lynn'];
  // var newFreinds = [
  //   'lewis',
  //   'ralpah',
  //   'darren',
  //   for (var freind in oldFriends) "❤️ $freind",
  // ];
  // print(newFreinds);

  // Map<String, Object> player = {
  //   'name': 'nico',
  //   'xp': 19.99,
  //   'superpower': false,
  // };
  // var player = {
  //   'name': 'nico',
  //   'xp': 19.99,
  //   'superpower': false,
  // };

  // Set<int> numbers = {1, 2, 3, 4};
  // var numbers = {1, 2, 3, 4};

  print(sayHello(
    name: 'nico',
    age: 19,
    country: 'cuba',
  ));

  capitalizeName('nico');
  capitalizeName(null);

  String? name;
  name ??= 'nico';
  print(name);

  print(reverseListOfNumbers([1, 2, 3]));

  // var player1 = Player(
  //   name: 'nico',
  //   xp: 1200,
  //   team: Team.blue,
  //   age: 21,
  // );
  // player1.sayHello();
  // var player2 = Player(
  //   name: 'lynn',
  //   xp: 2500,
  //   team: Team.blue,
  //   age: 12,
  // );
  // player2.sayHello();

  // var bluePlayer = Player.createBluePlayer(name: 'nico', age: 21);
  // var redPlayer = Player.createRedPlayer(name: 'lynn', age: 12);

  // var apiData = [
  //   {
  //     "name": "nico",
  //     "team": Team.red,
  //     "xp": 0,
  //   },
  //   {
  //     "name": "lynn",
  //     "team": Team.red,
  //     "xp": 0,
  //   },
  //   {
  //     "name": "dal",
  //     "team": Team.red,
  //     "xp": 0,
  //   },
  // ];

  // apiData.forEach((playerJson) {
  //   var player = Player.fromJson(playerJson)
  //     ..age = 1200
  //     ..team = Team.red;
  //   player.sayHello();
  // });
}

// void sayHello(String name) {
//   print("Hello $name nice to meet you");
// }

// String sayHello(String name) {
//   return "Hello $name nice to meet you";
// }

// num plus(num a, num b) => a + b;

// String sayHello({
//   String name = 'anon',
//   int age = 99,
//   String country = 'wakanda',
// }) {
//   return "Hello $name, you are $age, and you come from $country";
// }
String sayHello({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and you come from $country";
}

String capitalizeName(String? name) =>
    // name != null ? name.toUpperCase() : 'ANON';
    name?.toUpperCase() ?? 'ANON';

typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  return reversed.toList();
}
