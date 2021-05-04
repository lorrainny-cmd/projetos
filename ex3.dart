//ex dart 03

main() {
  Warrior personagem1 = Warrior("Personagem1", 25, 15, 12);
  Mage personagem2 = Mage("personagem2", 25, 30, 15);

  print(Personagem1.atacar());
  print(Personagem1.proteger(27));

  if (Personagem1.magicForce > personagem2.magicForce) {
    return print("Personagem1 é o vencedor com ${Personagem1.magicForce} de força magica!");
  } else if (Personagem1.magicForce < personagem2.magicForce) {
    return print("personagem2 é o vencedor com ${Personagem1.magicForce} de força magica!");
  }
}

abstract class Character {
  String name;
  int life;
  int physicalStrength;
  int magicForce;

  Character(this.name, this.life, this.physicalStrength, this.magicForce);
}

class Warrior extends Character with Escudo, Espada {
  Warrior(String nome, int life, int physicalStrength, int magicForce)
      : super(nome, life, physicalStrength, magicForce);
}

class Mage extends Character with VarinhaMagica {
  Mage(String nome, int life, int physicalStrength, int magicForce)
      : super(nome, life, physicalStrength, magicForce);
}

class Elf extends Character with ArcoeFlecha {
  Elf(String nome, int life, int physicalStrength, int magicForce)
      : super(nome, life, physicalStrength, magicForce);
}

mixin Escudo on Character {
  int proteger(int valor) {
    return valor;
  }
}

mixin Espada on Character {
  int atacar() {
    return physicalStrength;
  }
}

mixin VarinhaMagica on Character {
  int feitico() {
    return magicForce;
  }
}
mixin ArcoeFlecha on Character {
  int feitico() {
    return magicForce + physicalStrength;
  }
}
