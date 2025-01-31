import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Quente', 'Popular', 'Combo', 'Top'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index)),
    );
  }

  Widget buildCategory(int index) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(right: screenWidth /8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: selectedIndex == index ? 20 : 16,
                color:
                selectedIndex == index ? Color(0xff27214D) : Color(0xff938DB5),),
            ),
            Container(
              margin: EdgeInsets.only(top: 1),
              height: 3,
              width: 40,
              color:
                  selectedIndex == index ? Colors.orange : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
