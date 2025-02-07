import 'package:flutter/material.dart';

import 'package:projeto_/data/dish_model.dart';

import '../data/constants.dart';
import '../data/list_car.dart';



class InfoPrato extends StatefulWidget {
  final BuildContext addCestaContext;
  final DishModel dish;
  static List<DishModel> favoriteList = [];

  const InfoPrato(
      {super.key, required this.addCestaContext, required this.dish});

  @override
  State<InfoPrato> createState() => _InfoPratoState();
}

class _InfoPratoState extends State<InfoPrato> {
  int quantidade = 1;

  @override
  Widget build(BuildContext context) {
    bool isFavorite = InfoPrato.favoriteList.contains(widget.dish);
    return Scaffold(
        backgroundColor: Color(0xffFFA451),
        appBar: AppBar(
          backgroundColor: Color(0xffFFA451),
        ),
        body: LayoutBuilder(
          builder: (_, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Container(
                      height: constraints.maxHeight * .35,
                    ),
                    Positioned(
                      top: constraints.maxHeight * .05,
                      left: constraints.maxWidth * .25,
                      child: SizedBox(
                        height: constraints.maxHeight * .25,
                        width: constraints.maxWidth * .5,
                        child: Image.asset(
                          'assets/images/${widget.dish.image}.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  height: constraints.maxHeight * .65,
                  width: constraints.maxWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              widget.dish.name,
                              style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: textFont,
                                  fontWeight: FontWeight.bold,
                              ),maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          widget.dish.decrementar();
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: CircleBorder(
                                          side: BorderSide(
                                            color: Colors.black,
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        size: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        '${widget.dish.quantidade}',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            widget.dish.incrementar();
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffffebcc),
                                          shape: CircleBorder(),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          size: 25,
                                          color: Color(0xffFFA451),
                                        )),
                                  ],
                                ),
                                Text(
                                  'R\$ ${widget.dish.calcularCustoTotal()},00',
                                  style: TextStyle(fontSize: 22),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth,
                        height: 1,
                        color: Colors.black12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(26.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Um pacote contém:',
                              style: TextStyle(fontSize: 25),
                            ),
                            Container(
                              width: constraints.maxWidth * .4,
                              height: 3,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Quinoa vermelha, Lima, Mel, Mirtilo, Morangos, Manga e Menta.',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: textFont,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth,
                        height: 1,
                        color: Colors.black12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(26.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Se você está procurando uma salada de frutas para comer hoje, a quinoa é o brunch perfeito para você. fazer',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: textFont,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.orange[100],
                                      shape: BoxShape.circle),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (isFavorite) {
                                          widget.dish.toggleFavorite();
                                          InfoPrato.favoriteList
                                              .remove(widget.dish);
                                        } else {
                                          widget.dish.toggleFavorite();
                                          InfoPrato.favoriteList
                                              .add(widget.dish);
                                        }
                                      });
                                    },
                                    child: Icon(
                                      widget.dish.isFavorite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.orange,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    CartInherited.of(context).addToCart(
                                      widget.dish.image,
                                      widget.dish.name,
                                      widget.dish.price,
                                      widget.dish.quantidade,
                                      widget.dish.color,
                                      widget.dish.isFavorite
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Adicionado à cesta!'),
                                      ),
                                    );
                                    Navigator.pop(context);

                                  },
                                  child: Ink(
                                    height: constraints.maxHeight * .06,
                                    width: constraints.maxWidth * .6,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFA451),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          'Adicionar ao carrinho',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ));
  }
}
