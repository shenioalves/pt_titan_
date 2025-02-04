import 'package:flutter/material.dart';
import 'package:projeto_/screens/form-delivery.dart';

class MyBasket extends StatefulWidget {
  final BuildContext basketContext;

  const MyBasket({super.key, required this.basketContext});

  @override
  State<MyBasket> createState() => _MyBasketState();
}

class _MyBasketState extends State<MyBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffFFA451),
      body: Column(
        children: [
          Container(
            height: 180,
            color: Color(0xffFFA451),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            'Voltar',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Minha cesta',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child:  ListView(
              padding: EdgeInsets.only(top: 6, bottom: 70),
              //children: DishInherite.of(context).dishesList,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 40, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'R\$100,00',
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      builder: (context) => Delivery(),
                    );
                  },
                  child: Ink(
                    width: 200,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: Text(
                        'Checkout',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
