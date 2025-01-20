import 'package:flutter/material.dart';

class FormAuthentication extends StatefulWidget {
  const FormAuthentication({super.key, required this.authenticationContext});

  final BuildContext authenticationContext;

  @override
  State<FormAuthentication> createState() => _FormAuthenticationState();
}

class _FormAuthenticationState extends State<FormAuthentication> {
  TextEditingController firstNameController = TextEditingController();

  final _FormKey = GlobalKey<FormState>();

  bool valueValidator(String? value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Form(
        key: _FormKey,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: screenHeight * 0.58,
                    color: Color(0xFFFFA451),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: screenHeight * 0.04,
                    child: Center(
                      child: SizedBox(
                        width: screenWidth * 0.82,
                        height: screenHeight * 0.6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: screenWidth * 0.14,
                              height: screenHeight * 0.047,
                              child: Image.asset('assets/images/screen_23.png',
                                  fit: BoxFit.cover),
                            ),
                            SizedBox(
                                width: screenWidth * 0.82,
                                child: Image.asset('assets/images/screen_3.png',
                                    fit: BoxFit.cover)),
                            SizedBox(
                              height: screenHeight * 0.012,
                            ),
                            SizedBox(
                                width: screenWidth * 0.8,
                                child: Image.asset(
                                    'assets/images/ellipse_1.png',
                                    fit: BoxFit.cover)),
                          ],
                        ),
                      ),
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
                        child: SizedBox(
                          width: screenWidth * 0.85,
                          height: screenHeight * 0.3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Qual é seu primeiro nome?',
                                style: TextStyle(
                                  color: Color(0xff27214D),
                                  fontSize: screenHeight * 0.02,
                                  decoration: TextDecoration.none,
                                ),
                                // textAlign: TextAlign.start,
                              ),
                              TextFormField(
                                validator: (String? value) {
                                  if (valueValidator(value)) {
                                    return 'Insira seu primeiro nome!';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.text,
                                controller: firstNameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Tony',
                                  hintStyle:
                                      TextStyle(color: Color(0xffC2BDBD)),
                                  fillColor: Color(0xffF3F1F1),
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: screenHeight * 0.02,
                                    horizontal: screenWidth * 0.04,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.08,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFFFA451),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Comece a encomendar',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: screenHeight * 0.022,
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
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
