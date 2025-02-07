import 'package:flutter/material.dart';
import 'package:projeto_/components/categories.dart';
import 'package:projeto_/components/dish_card.dart';
import 'package:projeto_/data/dish_model.dart';
import 'package:projeto_/screens/cart.dart';

import '../data/constants.dart';


class HomeScreen extends StatefulWidget {
  final String name;

  const HomeScreen(
      {super.key, required this.homeContext, this.name = 'Shenio'});

  final BuildContext homeContext;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return Scaffold(
        // key: _scaffoldKey,
        // drawer: Menu(scaffoldKey: _scaffoldKey),
        backgroundColor: Colors.white,

        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 60.0, horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                      },
                      child: Ink(
                        child: Icon(
                          Icons.menu,
                          size: 40,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (newContext) =>
                                    Cart(cartContext: context,)));
                      },
                      child: Ink(
                        child: SizedBox(
                          child: Column(
                            children: [
                              Icon(
                                Icons.shopping_basket_outlined,
                                color: Colors.orange,
                                size: 60,
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                'Minha cesta',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: textFont,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.7,
                  child: Text(
                    'Olá ${widget.name}, que combinação de salada de frutas você quer hoje?',
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff27214D),
                        fontFamily: textFont,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //margin: EdgeInsets.all(15),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xffF3F4F9),
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.search),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: constraints.maxWidth * 0.6,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Pesquisar por combinações',
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/filtro.png',
                        scale: 0.7,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Combo recomendado',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff27214D),
                      fontFamily: textFont,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Dish(
                        dish: DishModel(
                      image: 'melimao',
                      name: 'Combinação de mel e limão',
                      price: 20,
                       color: 0xfff2f2f2,
                    )),
                    Dish(
                      dish: DishModel(
                        color: 0xfff2f2f2,
                        image: 'frutasvermelhas',
                        name: 'Combinação de manga e frutas vermelhas',
                        price: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(height: 40, child: Categories()),
                SizedBox(height: 10,),
                SizedBox(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Dish(
                          dish: DishModel(
                              image: 'quinoa',
                              name: 'Salada de Quinoa',
                              price: 15,
                              color: 0xffFFFAEB)),
                      Dish(
                        dish: DishModel(
                            image: 'tropical',
                            name: 'Salada de tropoical',
                            price: 13,
                            color: 0xffFEF0F0),
                      ),
                      Dish(
                        dish: DishModel(
                            image: 'melimao',
                            name: 'Salada de berry',
                            price: 10,
                            color: 0xffF1EFF6),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
