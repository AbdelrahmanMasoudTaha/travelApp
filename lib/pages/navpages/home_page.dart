import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/pages/components/app_text.dart';
import 'package:travel/pages/shared/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  List barImages = [
    "kayaking.png",
    "snorkling.png",
    "balloning.png",
    "hiking.png"
  ];
  List barText = ["Kayaking", "Snorkiling", "Balloning", "Hiking"];

  Widget build(BuildContext context) {
    TabController _tabcontroler = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //menu aria
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: AppColors.mainColor.withOpacity(0.8),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.grey
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('img/cartonMan.jpg'))),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          // discover text
          Container(
              margin: const EdgeInsets.only(left: 20),
              child: MyBoldText(
                text: "Discocer",
                size: 30,
              )),
          SizedBox(
            height: 30,
          ),
          // tap bar
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: EdgeInsets.only(left: 30, right: 25),
                controller: _tabcontroler,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator:
                    CircleTapIndecator(color: AppColors.mainColor, radius: 3),
                tabs: [
                  Tab(
                    text: "Places",
                  ),
                  Tab(
                    text: "Inspiration",
                  ),
                  Tab(
                    text: "Emotions",
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            width: double.maxFinite,
            height: 300,
            child: TabBarView(
              controller: _tabcontroler,
              children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 20, top: 15),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("img/mountain.jpeg"),
                              fit: BoxFit.cover)),
                    );
                  },
                ),
                Text("data"),
                Text("data"),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: "Explore more",
                  size: 22,
                ),
                MyText(
                  text: "see all",
                  color: AppColors.textColor1,
                )
              ],
            ),
          ),
          SizedBox(height: 24,),
          Container(
            height: 120,
            width: double.maxFinite,
            padding: EdgeInsets.only(left: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("img/"+barImages[index]),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                        child: MyText(text: barText[index],size: 15,color: AppColors.textColor2,)),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class CircleTapIndecator extends Decoration {
  final Color color;
  final double radius;

  CircleTapIndecator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  final double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius * 2);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
