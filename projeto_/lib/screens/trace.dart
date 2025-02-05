import 'package:flutter/material.dart';

class Trace extends StatefulWidget {
  final BuildContext trackingContext;

  const Trace({super.key, required this.trackingContext});

  @override
  State<Trace> createState() => _TraceState();
}

class _TraceState extends State<Trace> {
  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: Color(0xffFFA451),
      body: Column(
        children: [
          Container(
            height: screenHeigth * .18,
            color: Color(0xffFFA451),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            'Voltar',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Status do pedido',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 15),
                child: SizedBox(
                  height: screenHeigth * .55,
                  width: 50,
                  child: RotatedBox(quarterTurns: 1, child: Text('............................................................................................................', style: TextStyle(color: Colors.orange, fontSize: 30),),),
                ),
              ),
              SizedBox(
                height: screenHeigth * .7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffffd7b3),
                                borderRadius: BorderRadius.circular(16)),
                            child: Image.asset(
                              'assets/images/pedido-realizado.png',
                              fit: BoxFit.contain,
                            )),
                        Text(
                          'Pedido realizado',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 30,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffd4cee3),
                                borderRadius: BorderRadius.circular(16)),
                            child:
                                Image.asset('assets/images/sendo-feito.png')),
                        Text('Pedido está sendo feito',
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 30,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xfffccfcf),
                                borderRadius: BorderRadius.circular(16)),
                            child: Image.asset('assets/images/motinha.png')),
                        Column(
                          children: [
                            Text('Pedido saiu para a entrega',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                            Text('O entregador está chegando',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.orange, shape: BoxShape.circle),
                          child: Icon(
                            Icons.phone_in_talk,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/mapa.png',
                      scale: 0.8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //padding: EdgeInsets.all(5),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color(0xffcffce8),
                              borderRadius: BorderRadius.circular(16)),
                          child: Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          ),
                        ),
                        Column(
                          children: [
                            Text('Pedido entregue',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22)),
                          ],
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Color(0xffffca99),
                          size: 60,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
