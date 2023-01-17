import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          InkWell(
              onTap: (() {}),
              child: Container(
                padding: const EdgeInsets.all(8),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(color: Colors.red)),
              )),
          InkWell(
              onTap: (() {}),
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.asset('dev/dhanmondi.png'),
                    Image.asset('dev/downward.png'),
                  ],
                ),
              )),
          InkWell(
              onTap: (() {}),
              child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('dev/bell.png'))),
        ]));
  }
}
