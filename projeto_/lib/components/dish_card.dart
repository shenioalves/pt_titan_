import 'package:flutter/material.dart';
import 'package:projeto_/screens/add_basket.dart';

class Dish extends StatefulWidget {
  final String image, name;
  final int price, color;
  const Dish({super.key, required this.image, required this.name, required this.price, required this.color});




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
          color: Color(widget.color),
        ),
        width: screenWidth * 0.41,
        height: screenHeigth * 0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 15),
            Stack(
              children: [
                Container(
                  width: screenWidth * 0.35,
                  height: screenHeigth * 0.1,
                  //  color: Colors.black,
                  child: Image.asset(
                    'assets/images/${widget.image}.png',
                    scale: 0.7,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      print('favoritos');
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      // color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          'assets/images/coracao.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
                child: Text(
                  widget.name, style: TextStyle(fontSize: 15, color: Color(0xff27214D)),
                  textAlign: TextAlign.center,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'R\$ ${widget.price},00',
                  style: TextStyle(
                      color: Color(0xffFFA451), fontSize: 16),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (newContext) => AddBasket(
                          addCestaContext: context, image: widget.image, name: widget.name,price: widget.price,
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
