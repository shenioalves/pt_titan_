import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key,});


  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });

      },
      child: Ink(
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.orange,
          size: 35,
        ),
      ),
    );
  }
}
