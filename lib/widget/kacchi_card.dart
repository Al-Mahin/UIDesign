import 'package:flutter/material.dart';

class KacchiCard extends StatelessWidget {
  const KacchiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            Image.asset('dev/kacchicard.png'),
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
    );
  }
}
