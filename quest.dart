// import 'dart:html';

class HeroClass {

  String name = "undefined";
  int damage = -1;
  int hp = -1;
}

class Alchemist extends HeroClass {
  String name = "alchemist";
  int damage = 30;
  int hp = 200;
}

class Warrior extends HeroClass {
  String name = "warrior";
  int damage = 50;
  int hp = 160;
}

class Mercenary extends HeroClass {
  String name = "mercenary";
  int damage = 70;
  int hp = 100;
}

class Location {
  String name = "undefined";
  num deathProbability = -1;
}

class Wastelands extends Location {
  String name = "wastelands";
  num deathProbability = 0.3;
}

class Caves extends Location {
  String name = "caves";
  num deathProbability = 0.6;
}

class Underworld extends Location {
  String name = "underworld";
  num deathProbability = 0.43;
}

class DeadIslands extends Location {
  String name = "dead islands";
  num deathProbability = 0.78;
}

class Etherworld extends Location {
  String name = "etherworld";
  num deathProbability = 0.94;
}

