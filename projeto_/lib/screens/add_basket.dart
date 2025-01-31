import 'package:flutter/material.dart';
import 'package:projeto_/components/favorite.dart';
import 'package:projeto_/screens/my_basket.dart';

import '../data/constants.dart';

class AddBasket extends StatefulWidget {
  final BuildContext addCestaContext;
  final String image, name;
  final int price;

  AddBasket(
      {super.key,
      required this.addCestaContext,
      required this.price,
      required this.image,
      required this.name});

  int quantidade = 1;

  @override
  State<AddBasket> createState() => _AddBasketState();
}

class _AddBasketState extends State<AddBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFA451),
        appBar: AppBar(
          backgroundColor: Color(0xffFFA451),
        ),
        body: LayoutBuilder(
          builder: (_, constraints) {
            return Column(
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
                          'assets/images/${widget.image}.png',
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
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only( left: 16, right: 10),
                            child: Text(
                              widget.name,
                              style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: textFont,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(

                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        (widget.quantidade > 1)
                                            ? (widget.quantidade--)
                                            : (widget.quantidade);
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
                                      '${widget.quantidade}',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          widget.quantidade++;
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
                                'R\$ ${widget.quantidade * widget.price},00',
                                style: TextStyle(fontSize: 22),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: constraints.maxWidth,
                        height: 1,
                        color: Colors.black12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
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
                                'Quinoa vermelha, Lima, Mel, Mirtilo, Morangos, Manga e Menta.',style: TextStyle( fontSize: 16,fontFamily: textFont, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth,
                        height: 1,
                        color: Colors.black12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                'Se você está procurando uma salada de frutas para comer hoje, a quinoa é o brunch perfeito para você. fazer',style: TextStyle( fontSize: 16,fontFamily: textFont, fontWeight: FontWeight.bold),),
                           SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.orange[100],
                                    shape: BoxShape.circle
                                  ),
                                    child: Favorite()),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (newContext) => MyBasket(
                                                basketContext: context)));
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
                                              color: Colors.white, fontSize: 20),
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
