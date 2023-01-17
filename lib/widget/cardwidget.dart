import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          width: double.infinity,
          height: 180,
          padding: const EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 10,
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('dev/tile.png'),
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
          ),
        )
      ]),
    );
  }
}
