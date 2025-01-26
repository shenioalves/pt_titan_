import 'package:flutter/material.dart';
import 'package:projeto_/components/pratos.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.homeContext});

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
        backgroundColor: Color(0xffFFFFFF),
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
                        print('cesta');
                      },
                      child: SizedBox(
                        child: Column(
                          children: [
                            Container(
                              color: Colors.black12,
                              height: 45,
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
                  child: const Text(
                    'Olá Tony, que combinação de salada de frutas você quer hoje?',
                    style: TextStyle(fontSize: 22, color: Color(0xff27214D)),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF3F4F9),
                          borderRadius: BorderRadius.circular(16)),
                      height: constraints.maxHeight * 0.07,
                      width: constraints.maxWidth * 0.74,
                      child: Center(
                        child: TextFormField(
                          onChanged: (text) {
                            setState(() {});
                          },
                          keyboardType: TextInputType.text,
                          controller: searchController,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: 'Pesquisar por combinações',
                            prefixIcon: Icon(Icons.search),
                            filled: false,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Filtro');
                      },
                      child: Image.asset(
                        'assets/images/filtro.png',
                        scale: 0.65,
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
                    CardsPratos(
                        image: 'melimao',
                        name: 'Combinação de mel e limão',
                        price: '2.000',
                        color: 0xffFFFAEB),
                    CardsPratos(
                        image: 'frutasvermelhas',
                        name: 'Combinação de manga e frutas vermelhas',
                        price: '8.000',
                        color: 0xffFFFAEB),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Quente',
                      style: TextStyle(color: Color(0xff27214D), fontSize: 24),
                    ),
                    Text('Popular',
                        style:
                            TextStyle(color: Color(0xff938DB5), fontSize: 20)),
                    Text('Frio',
                        style:
                            TextStyle(color: Color(0xff938DB5), fontSize: 20)),
                    Text('Top',
                        style:
                            TextStyle(color: Color(0xff938DB5), fontSize: 20)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CardsPratos(
                          image: 'quinoa',
                          name: 'Salada de Quinoa',
                          price: '10.000',
                          color: 0xffFFFAEB),
                      CardsPratos(
                          image: 'tropical',
                          name: 'Salada de tropoical',
                          price: '10.000',
                          color: 0xffFEF0F0),
                      CardsPratos(
                          image: 'melimao',
                          name: 'Salada de berry',
                          price: '10.000',
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
