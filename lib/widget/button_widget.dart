import 'package:flutter/cupertino.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Image.asset(
          'dev/button.png',
          width: 300,
          height: 40,
        ),
        const Positioned(
            top: 8,
            left: 96,
            child: Text(
              'Rate Here!',
              style: TextStyle(
                  color: Color(
                    0xffffffff,
                  ),
                  fontSize: 16),
            )),
      ]),
    );
  }
}
