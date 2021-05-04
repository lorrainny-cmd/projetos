import 'functions.dart';

//parque de diversoes ex1

main() {
  int idade = 17;
  double altura = 1.45;

  if (!idadeValidacao(idade)) return;
  if (!alturaValidacao(altura)) return;
  return print("Cliente aprovado, boa diversão! :)");
}