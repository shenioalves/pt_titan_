import 'package:flutter/material.dart';
import 'package:projeto_/data/constants.dart';
import 'package:projeto_/data/dish_model.dart';

class DishCart extends StatelessWidget {
  final DishModel dishModel;

  const DishCart({super.key, required this.dishModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: Color(0xffffedcc),
          borderRadius: BorderRadius.circular(12),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 90,
              width: 90,


              child: Image.asset(
                'assets/images/${dishModel.image}.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dishModel.name,
                    style: TextStyle(fontSize: 20,
                        fontFamily: textFont,
                        fontWeight: FontWeight.bold
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(
                    '${dishModel.quantidade} unidades',
                    style: TextStyle(fontSize: 16,fontFamily: textFont,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Text(
              'R\$ ${dishModel.price * dishModel.quantidade},00',
              style: TextStyle(fontSize: 20,fontFamily: textFont,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
