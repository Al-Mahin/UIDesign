import 'package:carousel_slider/carousel_slider.dart';
import 'package:devstream/models/category_model.dart';
import 'package:devstream/widget/AppbarWidget.dart';
import 'package:devstream/widget/brand_colors.dart';
import 'package:devstream/widget/button_widget.dart';
import 'package:devstream/widget/card3.dart';
import 'package:devstream/widget/drawer.dart';
import 'package:devstream/widget/hero_carousel_card.dart';
import 'package:devstream/widget/kacchi_card.dart';
import 'package:devstream/widget/salman.dart';
import 'package:flutter/material.dart';
import 'package:devstream/models/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int current = 0;
    return Scaffold(
        drawer: const DrawerWidget(),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ListView(shrinkWrap: true, children: [const AppbarWidget()]),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[700],
                      ),
                      const SizedBox(width: 10),
                      const Text('Find food, restaurant, shops')
                    ],
                  ),
                ),
              ),
            ),
            Stack(children: [
              CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 2,
                    //autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        current = index;
                      });
                    }),
                items: Category.categories
                    .map((category) => HeroCarouselCard(
                          category: category,
                        ))
                    .toList(),
              ),
              Positioned(
                bottom: 0,
                right: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: Category.categories.map((category) {
                    int index = Category.categories.indexOf(category);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: current == index
                            ? Colors.white60
                            : const Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset('dev/category.png'),
            ),
            ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: 1,
              itemBuilder: (context, index) => SizedBox(
                height: 120,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Model.mylist.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 80,
                          child: Image(
                            image: AssetImage(
                                '${Model.mylist[index].listViewUrl}'),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset('dev/offer.png'),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => const Card(
                  child: KacchiCard(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset('dev/event_offer.png'),
            Image.asset('dev/hall.png'),
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
            ),
            Center(child: Image.asset('dev/probar.png')),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: const ButtonWidget(),
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) => const Card(
                  child: Card3(),
                ),
              ),
            ),
            const Center(
              child: Text(
                'View All',
                style: TextStyle(color: BrandColors.buttonColor),
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Salman(),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Salman(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Load more...',
                style: TextStyle(color: BrandColors.buttonColor),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Want to add your own business',
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(children: [
                Image.asset(
                  'dev/button.png',
                  width: 300,
                  height: 40,
                ),
                const Positioned(
                    top: 10,
                    left: 66,
                    child: Text(
                      "+ Let's add your business",
                      style: TextStyle(
                          color: Color(
                            0xffffffff,
                          ),
                          fontSize: 16),
                    )),
                const SizedBox(
                  height: 80,
                ),
              ]),
            ]),
          ]),
        ));
  }
}
