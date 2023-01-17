import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: Card(
          child: Container(
            child: Column(
              children: [
                Image.asset('dev/food3.png'),
                SizedBox(
                  height: 100,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('dev/resname.png'),
                      Image.asset('dev/mbbd.png'),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment,
                        children: [
                          Image.asset('dev/utensils.png'),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset('dev/kacchi.png'),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('dev/price.png'),
                          Image.asset('dev/vat.png'),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
