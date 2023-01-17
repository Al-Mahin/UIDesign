import 'package:devstream/widget/brand_colors.dart';
import 'package:devstream/widget/container_widget.dart';
import 'package:devstream/widget/tick_widget.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
          Container(
            height: double.infinity,
            decoration: const BoxDecoration(color: BrandColors.buttonColor),
          ),
          Container(
            height: 680,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(180),
                  topRight: Radius.circular(180)),
              color: Color(0xffF37938),
            ),
          ),
          Container(
            height: 610,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                  topRight: Radius.circular(200)),
              color: Color(0xffF6925C),
            ),
          ),
          Stack(children: [
            Container(
              height: 500,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 20,
              left: 30,
              child: Column(
                children: [
                  const Text(
                    'Choose your favorite topic to help us \ndeliver the most suitable result for you.',
                    style: TextStyle(
                        color: Color(
                          0xff808080,
                        ),
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Choose minimum 5 for best results',
                    style: TextStyle(
                        color: Color(
                          0xff808080,
                        ),
                        fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      children: const <Widget>[
                        ContainerWidget(),
                        ContainerWidget(),
                        ContainerWidget(),
                        TickWidget(),
                        TickWidget(),
                        ContainerWidget(),
                        TickWidget(),
                        ContainerWidget(),
                        ContainerWidget(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset('dev/down.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(children: [
                    Image.asset(
                      'dev/button.png',
                      width: 300,
                      height: 40,
                    ),
                    const Positioned(
                        top: 8,
                        left: 92,
                        child: Text(
                          'Start your journey',
                          style: TextStyle(
                              color: Color(
                                0xffffffff,
                              ),
                              fontSize: 16),
                        ))
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'You can still change your topic again later',
                    style: TextStyle(
                        color: Color(
                          0xff6c6a6a,
                        ),
                        fontSize: 14),
                  ),
                ],
              ),
            )
          ]),
          const Positioned(
              top: 100,
              left: 90,
              child: Text(
                'Set up your own\n food space',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ))
        ]),
      ),
    );
  }
}
