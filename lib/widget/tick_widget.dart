import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TickWidget extends StatefulWidget {
  const TickWidget({Key? key}) : super(key: key);

  @override
  State<TickWidget> createState() => _TickWidgetState();
}

class _TickWidgetState extends State<TickWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(children: [
            Image.asset('dev/circle2.png'),
            Positioned(right: 0, child: Image.asset('dev/tick.png'))
          ]),
          const Text(
            'Fast food',
            style:
                const TextStyle(color: const Color(0xff1D2D3A), fontSize: 14),
          ),
        ],
      ),
    );
  }
}
