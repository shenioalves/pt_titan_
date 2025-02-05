import 'package:flutter/material.dart';
import 'package:projeto_/data/constants.dart';
import 'package:projeto_/screens/home.dart';
import 'package:projeto_/screens/trace.dart';

class Check extends StatelessWidget {
  final BuildContext checkContext;
  const Check({super.key, required this.checkContext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Colors.green, style: BorderStyle.solid)),
              child: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 200,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Tudo certo!!!',
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Seu pedido foi anotado e está sendo atendido!',
            style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: textFont),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (newContext) => Trace(trackingContext: context),
                ));},
            child: Ink(
              width: 180,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Text(
                  'Rastrear entrega',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(homeContext: context),
                  ));
            },
            child: Ink(
              width: 240,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: Colors.orange, style: BorderStyle.solid)),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  'Continuar comprando',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.orange, fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
