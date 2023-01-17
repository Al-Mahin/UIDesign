import 'package:devstream/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class Salman extends StatelessWidget {
  const Salman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        padding: const EdgeInsets.all(3.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ListTile(
                leading: Image.asset('dev/burger.png'),
                title: const Text("Beef Burger"),
                trailing: const Text('Price'),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Image.asset('dev/salman.png'),
                ),
                title: Row(
                  children: [
                    Image.asset('dev/salmantext.png'),
                    Image.asset('dev/star.png'),
                    Image.asset('dev/following.png'),
                  ],
                ),
                trailing: Image.asset('dev/12.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Rate 5/5',
                    style: TextStyle(color: BrandColors.buttonColor),
                  ),
                  Image.asset('dev/plan.png'),
                  Image.asset('dev/icon.png')
                ],
              ),
            ],
          ),
        ));
  }
}
