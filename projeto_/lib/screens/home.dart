import 'package:flutter/material.dart';
import 'package:projeto_/components/categories.dart';
import 'package:projeto_/components/dish_card.dart';
import 'package:projeto_/screens/my_basket.dart';

class HomeScreen extends StatefulWidget {
  final String name;
  const HomeScreen({super.key, required this.homeContext, this.name = 'Shenio'});

  final BuildContext homeContext;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return Scaffold(
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
                    GestureDetector(
                      onTap: () {
                        print('menu');
                      },
                      child: Image.asset(
                        'assets/images/home1.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (newContext) =>
                                    MyBasket(basketContext: context)));
                      },
                      child: SizedBox(
                        child: Column(
                          children: [
                            Container(
                              color: Colors.black12,
                              height: 40,
                              child: Image.asset(
                                'assets/images/cesta.jpg',
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text('Minha cesta')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.7,
                  child: Text(
                    'Olá ${widget.name}, que combinação de salada de frutas você quer hoje?',
                    style: TextStyle(fontSize: 22, color: Color(0xff27214D)),
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
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.search ),
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
                    ),GestureDetector(
                      onTap: () {
                        print('Filtro');
                      },
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
                  style: TextStyle(fontSize: 30, color: Color(0xff27214D)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Dish(
                        image: 'melimao',
                        name: 'Combinação de mel e limão',
                        price: 20,
                        color: 0xfff2f2f2),
                    Dish(
                        image: 'frutasvermelhas',
                        name: 'Combinação de manga e frutas vermelhas',
                        price: 25,
                        color: 0xfff2f2f2),
                  ],
                ),
                SizedBox(height: 10,),
                SizedBox(
                    height: 40,
                    child: Categories()),

                SizedBox(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Dish(
                          image: 'quinoa',
                          name: 'Salada de Quinoa',
                          price: 15,
                          color: 0xffFFFAEB),
                      Dish(
                          image: 'tropical',
                          name: 'Salada de tropoical',
                          price: 13,
                          color: 0xffFEF0F0),
                      Dish(
                          image: 'melimao',
                          name: 'Salada de berry',
                          price: 10,
                          color: 0xffF1EFF6),
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
