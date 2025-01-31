import 'package:flutter/material.dart';
import 'package:projeto_/components/check.dart';
import 'package:projeto_/screens/form-cartao.dart';

class Delivery extends StatelessWidget {
  final BuildContext deliveryContext;
  const Delivery({super.key, required this.deliveryContext});

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Ink(
                child: Icon(
                  Icons.close,
                  size: 45,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: screenWidth,
            height: screenHeigth * .6,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Endereço de entrega',
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
                                hintText: '10 AV da, New Salvador',
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
                        'Telefone para contato',
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
                                hintText: '90 90900 0909',
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
                  Center(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(14),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Check(checkContext: context),
                              ));
                        },
                        child: Ink(
                          // width: screenWidth * .5,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                  color: Colors.orange, style: BorderStyle.solid),
                          ),
                          child: Center(
                            child: Text(
                              'Pagar na entrega',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(14),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FormCartao(cartaoContect: context),
                              ));
                        },
                        child: Ink(
                          // width: screenWidth * .5,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                  color: Colors.orange, style: BorderStyle.solid),
                          ),
                          child: Center(
                            child: Text(
                              'Pagar com o cartão',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
