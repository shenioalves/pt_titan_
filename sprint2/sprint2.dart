void main() {
  Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marron', true);
  Fruta banana1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia1 = Nozes('Macadâmia', 2, 'Branco amarelado', 'Doce', 20, 35);
  Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  macadamia1.printAlimento();
  banana1.printAlimento();
  mandioca1.printAlimento();
  limao1.printAlimento();
  print('');
  mandioca1.cozinhar();
  limao1.fazerSuco();

  macadamia1.fazerMassa();
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor');
  }
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;
  /**Construtor */
  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);
  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        'A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura dias para comer. Ela está madura? $isMadura');
  }

  /**Quando o metodo é do tipo void ou seja, nao retorna nada, é opcional colocar antes do nome do metodo */
  fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }

  @override
  void seperarIngredientes() {
    print('Catar a $nome!');
  }

  @override
  void fazerMassa() {
    print('Misturar a $nome com farinha, açucar e ovos!');
  }

  @override
  void assar() {
    print('Colocar no forno!');
  }
}

//Implemetando class abstrata
class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;
  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);
  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando!');
    } else {
      print('Nem precisa cozinhar!');
    }
  }

  /** metodos da class abstract */
  @override
  void assar() {
    // TOD: implement assar
  }

  @override
  void fazerMassa() {
    // TOD: implement fazerMassa
  }

  @override
  void seperarIngredientes() {
    // TOD: implement seperarIngredientes
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  existeRefri(bool existe) {
    if (existe) {
      print('Existe Refrigerante de $nome');
    } else {
      print('Não existe refri de $nome');
    }
  }
}

class Nozes extends Fruta {
  double porcetagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcetagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);
  //Override usa o conceito de polimorfimo onde a classe filha sobrescreve os metodos da classe pai
  @override
  void fazerMassa() {
    print('Tirar a casca da $nome');
    super.fazerMassa();
  }
}

abstract class Bolo {
  void seperarIngredientes();

  void fazerMassa();

  void assar();
}
