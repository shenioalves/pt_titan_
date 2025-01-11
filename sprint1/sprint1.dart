void main() {
  int idade = 22;
  double altura = 1.86;
  bool gamer = true;
  const String nome = "Shênio Alves"; //const: nome constante e nao pode mudar
  String nickname = "MEDBLACK";
  bool maiorDeIdade;
  int horas = 10;

  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  for (int i = 1; i < 5; i++) {
    print("Conclui $i partidas de CS");
  }

  while (horas > 0) {
    print("Mais uma pt");
    horas--;
  }

  /*lista dinamica pode ter varias tipos de variaveis como, int, double, string... */
  List<dynamic> shenio = [idade, altura, gamer, nome, nickname];

  String frase = "Eu sou ${shenio[4]}"
      "\nmas meu nome é: ${shenio[3]},"
      "\neu gosto de gamers? ${shenio[2]}."
      "\nEu tenho ${shenio[1]} metros de altura e "
      "\n${shenio[0]} anos de idade. "
      "\nEu sou maior de idade? $maiorDeIdade";

  print(frase);
}
