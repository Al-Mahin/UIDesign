import 'package:devstream/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          //color: Colors.yellow,
          child: Image.asset(
            'dev/rest.jpeg',
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          ),
        ),
        Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: const Radius.circular(30)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('dev/kfclogo.png'),
                        Image.asset('dev/9A.png'),
                        Image.asset('dev/book.png'),
                        Image.asset('dev/4.7.png'),
                        const Icon(Icons.more_vert)
                      ],
                    ),
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
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          'dev/buttonwhite.png',
                          width: 300,
                          height: 40,
                        ),
                        const Positioned(
                            top: 8,
                            left: 96,
                            child: Text(
                              'See All Review',
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 16),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset('dev/offer3.png'),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) => Card(
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset('dev/food3.png'),
                                SizedBox(
                                  height: 100,
                                  width: 200,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('dev/menu.png'),
                          Image.asset('dev/view.png'),
                        ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('dev/menupic.png'),
                        Image.asset('dev/menupic.png'),
                        Image.asset('dev/menupic.png'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('dev/today.png'),
                        Image.asset('dev/view.png'),
                      ],
                    ),
                    SizedBox(
                      height: 350,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        // ignore: avoid_unnecessary_containers
                        itemBuilder: (context, index) => Container(
                          child: const ContainWidget(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('dev/thai.png'),
                        Image.asset('dev/view.png'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 400,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        // ignore: avoid_unnecessary_containers
                        itemBuilder: (context, index) => Container(
                          child: const ContainWidget(),
                        ),
                      ),
                    ),
                  ]),
            ))
      ]),
    ));
  }
}
