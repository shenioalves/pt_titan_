import 'package:flutter/material.dart';
import 'package:projeto_/screens/info_prato.dart';
import 'package:projeto_/data/dish_model.dart';


class Dish extends StatefulWidget {
  final DishModel dish;
  final BuildContext? dishContext;

  const Dish({super.key, required this.dish, this.dishContext});

  @override
  State<Dish> createState() => _DishState();
}

class _DishState extends State<Dish> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(widget.dish.color),
        ),
        width: screenWidth * 0.41,
        height: screenHeigth * 0.23,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 15),
            Stack(
              children: [
                SizedBox(
                  width: screenWidth * 0.35,
                  height: screenHeigth * 0.1,
                  child: Image.asset(
                    'assets/images/${widget.dish.image}.png',
                    scale: 0.7,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        widget.dish.toggleFavorite();
                        widget.dish.isFavorite ? ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Adicionado aos favoritos!'),
                          ),
                        ) : ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Removido aos favoritos'),
                          ),
                        );
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
                )
              ],
            ),
            SizedBox(
                child: Text(
              widget.dish.name,
              style: TextStyle(fontSize: 15, color: Color(0xff27214D)),
              textAlign: TextAlign.center,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'R\$ ${widget.dish.price},00',
                  style: TextStyle(color: Color(0xffFFA451), fontSize: 16),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (newContext) => InfoPrato(
                              addCestaContext: context,
                              dish: DishModel(
                                  image: widget.dish.image,
                                  name: widget.dish.name,
                                  price: widget.dish.price),
                            ),
                          ));
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
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
