import 'dart:core';
import 'dart:io';
import 'dart:math';
import 'quest.dart';

void main() {
  firstTask();
  secondTask();
  thirdTask();
  fourTask();
  fifthTask();
  sixthTask();
  seventhTask();
  eighthTask();
  ninthTask();
  tenthTask();
}

void firstTask() {
  stdout.write("Enter the number: ");
  num input = int.parse(stdin.readLineSync()!);

  stdout.write("\nNumber's divisors: \n");
  for (int i = 1; i <= input; i++) {
    if (input % i == 0) {
      print(i);
    }
  }

  if (input % 2 == 0) {
    stdout.write("\nGiven number is even.");
  } else {
    stdout.write("\nGiven number is odd.");
  }
}

void secondTask() {
  var list = [];
  var rng = Random();
  print("Elements in the list: ");
  for (int i = 0; i < 10; i++) {
    var elem = rng.nextInt(100);
    list.add(elem);
    stdout.write('${elem} ');
  }
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = 0; j < list.length - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        final tmp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = tmp;
      }
    }
  }
  print("Elements after sorting: ");
  for (int i = 0; i < 10; i++) {
    stdout.write('${list[i]} ');
  }
}

void thirdTask() {
  var list = [];
  var rng = Random();
  print("Elements in the list: ");
  for (int i = 0; i < 10; i++) {
    var elem = rng.nextInt(100);
    list.add(elem);
    stdout.write('${elem} ');
  }
  print("\nNumbers divisible by 3 or 5:");
  for (int i = 0; i < list.length; i++) {
    if (list[i] % 3 == 0 || list[i] % 5 == 0) {
      stdout.write('${list[i]} ');
    }
  }
}

void fourTask() {
  print("Enter the string containing repetitive words: ");
  // String words = stdin.readLineSync()!;
  String words = "first second third fourth first az 90k as az";
  var listOfWords = words.split(" ");
  listOfWords.forEach((element) => {element.trim()});

  var wordsToRemove = [];
  stdout.write('\n');
  for (int i = 0; i < listOfWords.length; i++) {
    for (int j = i + 1; j < listOfWords.length; j++) {
      if (listOfWords[i] == listOfWords[j]) {
        wordsToRemove.add(listOfWords[i]);
      }
    }
  }
  wordsToRemove = wordsToRemove.toSet().toList();
  wordsToRemove.forEach((element) {
    int i = 0;
    while (i < listOfWords.length) {
      if (listOfWords[i] == element) {
        listOfWords.remove(element);
      } else
        i++;
    }
  });

  stdout.write("Remaining words: \n");
  for (int i = 0; i < listOfWords.length; i++) {
    stdout.write('${listOfWords[i]} ');
  }
}

void fifthTask() {
  var list1 = [];
  var list2 = [];
  var rng = Random();
  int range = 15;
  print("Elements in the list: ");
  for (int i = 0; i < 10; i++) {
    var elem1 = rng.nextInt(range);
    var elem2 = rng.nextInt(range);
    list1.add(elem1);
    list2.add(elem2);
  }

  print("First list:");
  for (int i = 0; i < list1.length; i++) {
    stdout.write('${list1[i]} ');
  }
  print("Second list:");
  for (int i = 0; i < list2.length; i++) {
    stdout.write('${list2[i]} ');
  }

  var mergedList = [];
  for (int i = 0; i < list1.length; i++) {
    for (int j = 0; j < list2.length; j++) {
      if (list1[i] == list2[j]) {
        mergedList.add(list1[i]);
      }
    }
  }

  mergedList = mergedList.toSet().toList();
  print("Merged list: ");
  for (int i = 0; i < mergedList.length; i++) {
    stdout.write('${mergedList[i]} ');
  }
}

void sixthTask() {
  var sourceList = [1, 5, 10, -3, 4, 8, 9, 3, 2, 7, 14];
  var target = 17;
  var indices = [];

  for (int i = 0; i < sourceList.length; i++) {
    for (int j = i + 1; j < sourceList.length; j++) {
      if (sourceList[i] + sourceList[j] == target) {
        indices.addAll([i, j]);
      }
    }
  }
  print(
      "Indices, whose values in list add up to target: ${indices[0]} ${indices[1]}");
}

void seventhTask() {
  var wordList = [
    'The Bendu',
    'Kylo Ren',
    'Ben Solo',
    'Dengar',
    'Fennec Shand',
    'General Grievous'
  ];

  wordList.sort((a, b) => a.length.compareTo(b.length));
  var first = wordList.first;
  var second = wordList[1];

  int i = 0;
  var commonWordsList = [];
  while (i < first.length) {
    int j = 0;
    var common = "";
    while (j < second.length) {
      if (second[j] == first[i]) {
        common += second[j];
        i++;
      }
      j++;
      if (common.isNotEmpty) commonWordsList.add(common);
    }
    i++;
  }

  commonWordsList.sort((a, b) => a.length.compareTo(b.length));
  var longestWord = commonWordsList.last;
  if (wordList.any((element) => element.contains(longestWord))) {
    print("Common substring is ${longestWord}");
  } else {
    print("Common substring is not found.");
  }
}

void eighthTask() {
  var str1 = "01010101";
  var str2 = "10110101";
  var answer =
      (int.parse(str1, radix: 2) + int.parse(str2, radix: 2)).toRadixString(2);

  print("Sum of ${str1} and ${str2} is ${answer}");
}

void ninthTask() {
  HeroClass character;
  stdout.write("Enter a number to pick your hero\n" +
      "\t1 - alchemist, 2 - warrior, any other case - mercenary: ");
  switch (int.parse(stdin.readLineSync()!)) {
    case 1:
      character = new Alchemist();
      break;
    case 2:
      character = new Warrior();
      break;
    default:
      character = new Mercenary();
  }

  print(
      "You selected ${character.name} with ${character.hp} hp and ${character.damage} damage");

  Location location;
  stdout.write(
      "Your objective is to reach castle and pass important news to their majesty!" +
          "\nSelect the path that you intend to take. \nBe aware, that some locations are dangerous and you might never leave them once enter!" +
          "\nWhere do you want to go?\n\t1 - Wastelands\n\t2 - Caves\n\t3 - Underworld\n\t4 - Dead Islands\n\trest - EtherWorld: ");
  switch (int.parse(stdin.readLineSync()!)) {
    case 1:
      location = new Wastelands();
      break;
    case 2:
      location = new Caves();
      break;
    case 3:
      location = new Underworld();
      break;
    case 4:
      location = DeadIslands();
      break;
    default:
      location = Etherworld();
  }

  var deathProbability = Random().nextDouble();
  print("Probability that you will pass through - ${deathProbability.toStringAsFixed(3)} vs location\'s death probability - ${location.deathProbability}");
  if (deathProbability <= location.deathProbability) {
    print("Unfortunately, you didn't make it and lost in the ${location.name}");
  } else {
    print("You successfully reached the castle");
  }
}

void tenthTask() {
  var p = 2/3;
  var survivalProbability = 1.0;

  for(int i = 1; i < 4; i++) {
    survivalProbability *= pow(p, i);
  }

  print("Probability a drunk won't fall: ${survivalProbability}");
}