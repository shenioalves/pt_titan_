class DishModel {
  final String image;
  final String name;
  final int price;
  int _quantidade;
  final int color;
  bool _isFavorite;

  DishModel(
      {required this.image,
      required this.name,
      required this.price,
      this.color = 0xfff2f2f2,
      int quantidade = 1,
      bool isFavorite = false})
      : _quantidade = quantidade,
        _isFavorite = isFavorite;

  int get quantidade => _quantidade;
  bool get isFavorite => _isFavorite;

  void incrementar() {
    _quantidade++;
  }

  void decrementar() {
    if (_quantidade > 1) {
      _quantidade--;
    }
  }
  void toggleFavorite() {
    _isFavorite = !_isFavorite;

  }

  int calcularCustoTotal() {
    return price * _quantidade;
  }
}
