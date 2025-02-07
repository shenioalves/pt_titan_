import 'package:flutter/material.dart';
import 'package:projeto_/components/form_delivery.dart';
import 'package:projeto_/data/dish_model.dart';

import '../components/dish_cart.dart';
import '../data/constants.dart';
import '../data/list_car.dart';


class Cart extends StatefulWidget {
  final BuildContext? cartContext;
  final DishModel? dishModel;
  const Cart({super.key, required this.cartContext, this.dishModel});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int calcularTotal() {
    int total = 0;
    for (var dish in CartInherited.of(context).listCart) {
      total += dish.price * dish.quantidade;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffFFA451),
      body: Column(
        children: [
          Container(
            height: 180,
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20),
              child: Row(
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
                          SizedBox(width: 10),
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
            child: ListView.builder(
              itemCount: CartInherited.of(context).listCart.length,
              itemBuilder: (context, index) {
                final dish = CartInherited.of(context).listCart[index];
                return DishCart(dishModel: dish);
              },
            )
            ,
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
                        fontSize: 22,fontFamily: textFont,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'R\$ ${calcularTotal()},00',
                      style: TextStyle(fontSize: 22,fontFamily: textFont,
                          fontWeight: FontWeight.bold),
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

