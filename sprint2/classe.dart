void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "varde e Amarela";
  String sabor = "Doce e citrica";
  int diasDeColheita = 20;
  bool isMadura = funcEstaMadura(diasDeColheita);

  Fruta fruta01 =
      Fruta(nome, peso, cor, sabor, diasDeColheita, isMadura: isMadura);
  Fruta fruta02 = Fruta('Uva', 40, 'Roxo', 'Doce', 40);

  print(fruta01.sabor);
  print(fruta02.sabor);

  fruta01.estaMadura(30);

  List<dynamic> fruta = [nome, peso, cor, sabor, isMadura];
  print(fruta);
  print("");
  print(funcFruta("Laranja", 198.5, 31));
}

/**Classe */
class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDeColheita;
  bool? isMadura;

  /**Construtor */
  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDeColheita,
      {this.isMadura});
  estaMadura(int diasParaMadura) {
    isMadura = diasDeColheita >= diasParaMadura;
    print(
        'A sua $nome foi colhida a $diasDeColheita dias, e precisa de $diasParaMadura dias para comer. Ela está madura? $isMadura');
  }
}

//atividade "Entendendo Funções e Escopo"
String funcFruta(String nome, double peso, int diasDesdeColheita) {
  int diasFicarMadura = 30;
  int estaMadura = diasFicarMadura - diasDesdeColheita;
  if (estaMadura >= 0) {
    return "A $nome pesa $peso gramas!"
        "\nEla foi colhida há $diasDesdeColheita dias e"
        "\nprecisa de $diasFicarMadura para amadurecer, logo, a $nome está"
        "\nmadura!";
  } else {
    return "A $nome pesa $peso gramas!"
        "\nEla foi colhida há $diasDesdeColheita dias e"
        "\nprecisa de $diasFicarMadura para amadurecer, logo, a $nome não"
        "\nestá madura!";
  }
}

/*parametros nomeados sao parametros opcionais e fica com essa estrutura {tipo nome}
  required: parametro nomeado passa a ser obrigatorio
*/
mostrarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome esta madura.");
    print("A $nome é $cor.");
  } else {
    print("A $nome nao esta madura.");
    print("A $nome é $cor.");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
