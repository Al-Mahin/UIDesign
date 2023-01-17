import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: Container(
        child: Column(
          children: [
            Image.asset('dev/circle.png'),
            const Text(
              'Fast food',
              style: TextStyle(color: Color(0xfff2f2f2), fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
