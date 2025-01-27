import 'package:flutter/material.dart';
import 'package:projeto_/screens/my_basket.dart';

class AddBasket extends StatefulWidget {
  final BuildContext addCestaContext;
  final String image, name;
  final int price;

  AddBasket({super.key, required this.addCestaContext, required this.price, required this.image, required this.name});

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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(
                            fontSize: 40,
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
                        Container(
                          width: constraints.maxWidth,
                          height: 1,
                          color: Colors.black,
                        ),
                        Column(
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
                          ],
                        ),
                        Text(
                            'Quinoa vermelha, Lima, Mel, Mirtilo, Morangos, Manga e Menta.'),
                        Container(
                          width: constraints.maxWidth,
                          height: 1,
                          color: Colors.black,
                        ),
                        Text(
                            'Se você está procurando uma salada de frutas para comer hoje, a quinoa é o brunch perfeito para você. fazer'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffffebcc),
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20)),
                                child: Image.asset(
                                  'assets/images/coracao.png',
                                  scale: 0.6,
                                )),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (newContext) =>
                                            MyBasket(basketContext: context)));
                              },
                              child: Container(
                                height: constraints.maxHeight * .06,
                                width: constraints.maxWidth * .6,
                                decoration: BoxDecoration(
                                    color: Color(0xffFFA451),
                                    borderRadius: BorderRadius.circular(16)),
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
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }
}
