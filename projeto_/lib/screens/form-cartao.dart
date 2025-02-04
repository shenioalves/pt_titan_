import 'package:flutter/material.dart';
import 'package:projeto_/screens/tracking.dart';

import '../components/check.dart';

class FormCartao extends StatelessWidget {
  final BuildContext cartaoContect;

  const FormCartao({super.key, required this.cartaoContect});

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        width: screenWidth,
        height: screenHeigth * .55,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nome do Cartão',
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    //   width: screenWidth,
                    decoration: BoxDecoration(
                        color: Color(0xffeeeff6),
                        borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Miguel Lima',
                            hintStyle: TextStyle(
                                color: Color(0xffC2BDBD), fontSize: 20),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Número do Cartão',
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,

                    //   width: screenWidth,
                    decoration: BoxDecoration(
                        color: Color(0xffeeeff6),
                        borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: '1234 5678 9012 1314',
                            hintStyle: TextStyle(
                                color: Color(0xffC2BDBD), fontSize: 20),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Data',
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 70,
                        width: screenWidth * .4,
                        decoration: BoxDecoration(
                            color: Color(0xffeeeff6),
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: '10/30',
                                hintStyle: TextStyle(
                                    color: Color(0xffC2BDBD), fontSize: 20),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CCV',
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 70,
                        width: screenWidth * .4,
                        decoration: BoxDecoration(
                            color: Color(0xffeeeff6),
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: '123',
                                hintStyle: TextStyle(
                                    color: Color(0xffC2BDBD), fontSize: 20),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(14),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Check(checkContext: context,),
                          ),
                        );
                      },
                      child: Ink(
                        width: screenWidth * .6,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Completar pedido',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}

