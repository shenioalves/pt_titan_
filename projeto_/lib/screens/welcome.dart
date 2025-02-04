import 'package:flutter/material.dart';
import 'package:projeto_/data/constants.dart';
import 'package:projeto_/screens/authentication.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Stack(children: [
          Container(
            height: screenHeight * 0.58,
            color: Color(0xFFFFA451),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: screenHeight * 0.05,
            child: Center(
              child: Stack(children: [
                SizedBox(

                  width: screenWidth * 0.82,
                  //height: screenHeight * 0.,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                          width: screenWidth * 0.82,
                          child: Image.asset('assets/images/screen_2.png',
                              fit: BoxFit.cover)),
                      SizedBox(
                        height: screenHeight * 0.012,
                      ),
                      SizedBox(
                          width: screenWidth * 0.8,
                          child: Image.asset('assets/images/ellipse_1.png',
                              fit: BoxFit.cover)),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  child: SizedBox(
                    width: screenWidth * 0.14,
                    height: screenHeight * 0.047,
                    child: Image.asset('assets/images/screen_23.png',
                        fit: BoxFit.cover),
                  ),
                ),
              ]),
            ),
          ),
        ]),
        Stack(
          children: [
            Container(
              height: screenHeight * 0.42,
              color: Colors.white,
            ),
            Positioned(
              left: 0,
              right: 0,
              top: screenHeight * 0.03,
              child: Center(
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: screenWidth * 0.82,
                    height: screenHeight * 0.28,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Obtenha a combinação de salada de frutas mais fresca',
                          style: TextStyle(
                            color: Color(0xff27214D),
                            fontSize: screenHeight * 0.026,
                            decoration: TextDecoration.none,
                            fontFamily: textFont,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'Entregamos a melhor e mais fresca salada de frutas da cidade. Peça um combo hoje!!!',
                          style: TextStyle(
                            color: Color(0xff5D577E),
                            fontSize: screenHeight * 0.02,
                            decoration: TextDecoration.none,
                            fontFamily: textFont,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFFA451),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (newContext) => FormAuthentication(
                                    authenticationContext: context,
                                  ),
                                ));
                          },
                          child: SizedBox(
                            height: screenHeight * 0.08,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Vamos continuar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.03,
                                  fontFamily: textFont,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
