import 'package:flutter/material.dart';
import 'package:projeto_/components/check.dart';
import 'package:projeto_/components/form-cartao.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: screenHeight * 0.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Endereço de entrega', style: TextStyle(fontSize: 22)),
              SizedBox(height: 10),
              _buildTextField(hintText: '10 AV da, New Salvador'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Telefone para contato', style: TextStyle(fontSize: 22)),
              SizedBox(height: 10),
              _buildTextField(hintText: '90 90900 0909'),
            ],
          ),
          _buildPaymentButton(
            context,
            text: 'Pagar na entrega',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Check(checkContext: context)),
            ),
          ),
          _buildPaymentButton(
            context,
            text: 'Pagar com o cartão',
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (context) => FormCartao(cartaoContect: context),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({required String hintText}) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xffeeeff6),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.only(left: 25),
      alignment: Alignment.centerLeft,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xffC2BDBD), fontSize: 20),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildPaymentButton(BuildContext context,
      {required String text, required VoidCallback onTap}) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onTap,
          child: Ink(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.orange),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(color: Colors.orange, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
