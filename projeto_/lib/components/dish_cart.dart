import 'package:flutter/material.dart';
import 'package:projeto_/data/dish_model.dart';

class DishCart extends StatelessWidget {
  final DishModel dishModel;

  const DishCart({super.key, required this.dishModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 140,
          decoration: BoxDecoration(
            color: Color(0xffffedcc),
            borderRadius: BorderRadius.circular(12),
            // boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 8)],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/images/${dishModel.image}.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 230,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dishModel.name,
                        style: TextStyle(fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Text(
                        '${dishModel.quantidade} unidades',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Text(
                  'R\$ ${dishModel.price * dishModel.quantidade},00',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
