import 'package:flutter/material.dart';

class CardsPratos extends StatefulWidget {
  final String image, name, price;
  final int color;
  const CardsPratos({super.key, required this.image, required this.name, required this.price, required this.color});




  @override
  State<CardsPratos> createState() => _CardsPratosState();
}

class _CardsPratosState extends State<CardsPratos> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(widget.color),
        ),
        width: 200,
        height: 270,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 15),
            Stack(
              children: [
                Container(
                  width: 170,
                  height: 150,
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
                      width: 35,
                      height: 35,
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
                width: 170,
                child: Text(
                  widget.name,
                  textAlign: TextAlign.center,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'R\$ ${widget.price}',
                  style: TextStyle(
                      color: Color(0xffFFA451), fontSize: 16),
                ),
                ElevatedButton(
                    onPressed: () {
                      print('Add cesta');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffffebcc),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(5),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 35,
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
