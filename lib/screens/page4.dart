import 'package:devstream/models/models.dart';
import 'package:devstream/widget/brand_colors.dart';
import 'package:devstream/widget/salman.dart';
import 'package:flutter/material.dart';

class AppMenu extends StatefulWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView(shrinkWrap: true, children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: (() {}),
                              child: const Icon(Icons.arrow_back)),
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
                        ]))
              ]),
            ),
            Image.asset('dev/offer3.png'),
            Container(
              child: const Salman(),
            ),
            SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Model.mylist.length,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 80,
                            child: Image(
                              image: AssetImage(
                                  '${Model.mylist[index].listViewUrl}'),
                            ),
                          ),
                        )))),
            const SizedBox(
              height: 10,
            ),
            Image.asset('dev/probar.png'),
            const SizedBox(
              height: 10,
            ),
            Image.asset('dev/view.png'),
            const SizedBox(
              height: 10,
            ),
            Image.asset('dev/icon.png'),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  'dev/vline.png',
                ),
              ),
              Column(
                children: [
                  Image.asset('dev/comment.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset('dev/comment.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset('dev/comment.png'),
                ],
              ),
            ]),
            const Text(
              'Load 32 more...',
              style: TextStyle(color: BrandColors.buttonColor),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
