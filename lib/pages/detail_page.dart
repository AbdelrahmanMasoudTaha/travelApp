import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/pages/components/app_bottom.dart';
import 'package:travel/pages/components/app_text.dart';
import 'package:travel/pages/components/responsive_bottom.dart';
import 'package:travel/pages/shared/colors.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double gottinStars =3;
  int selectedIndex = -1;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [

            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 330,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                          image: AssetImage(
                    "img/mountain.jpeg",
                  ))),
                )),
            Positioned(
                top: 60,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          size: 30,
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          size:30,
                          Icons.more_vert,
                          color: Colors.white,
                        ))
                  ],
                )),
            Positioned(
              top: 300,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 530,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                  ),
                   child:Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,

                           children: [
                             MyBoldText(text: "somewhere",size: 30,),
                             MyBoldText(text: "200 \$",size: 30,color: AppColors.mainColor,)
                           ],
                         ),
                         SizedBox(height: 10),
                         Row(
                           children: [
                             Icon(Icons.location_on,size: 20,color: AppColors.mainColor,),
                             SizedBox(width: 5,),
                             MyText(text: "city, country",color: AppColors.mainColor,size: 20,)
                           ],
                         ),
                         SizedBox(height: 20),
                         Row(
                           children: [
                             Wrap(
                               children: List.generate(5, (index){
                                 return Icon(
                                     Icons.star,
                                   color: index<gottinStars?AppColors.starColor:AppColors.textColor2,
                                 );
                               }),
                             ),
                             SizedBox(width: 5,),

                             MyText(text: "(4.0)", color: AppColors.textColor2,)
                           ],
                         ),
                         SizedBox(height: 30,),
                         MyBoldText(text: "People"),
                         SizedBox(height: 10,),
                         MyText(text: "Number of people in your groub", color: AppColors.textColor2,),
                         SizedBox(height: 10,),
                         Wrap(
                           children: List.generate(5, (index){
                             return InkWell(
                               onTap: (){
                                 setState(() {
                                   selectedIndex = index;
                                 });
                               },
                               child: AppBottom(

                                   color:selectedIndex == index? Colors.white:Colors.black ,
                                   backgroundcolor:selectedIndex == index?Colors.black: AppColors.buttonBackground,
                                   bordercolor: selectedIndex == index?Colors.black:AppColors.buttonBackground,
                                   hasIcon: false,
                                   size: 50,
                               text: (index+1).toString(),

                               ),
                             );
                           }),
                         ),
                         SizedBox(height: 20,),
                         MyBoldText(text: "Discription"),
                         SizedBox(height: 10,),
                         MyText(text: "We live in a wonderful world that is full of beauty, charm and adventure. There is no end to the adventures we can have if only we seek them with our eyes open.",
                         color: AppColors.textColor2,
                         ),




                       ],
                     ),
                   ) ,
                )
            ),
            Positioned(
              bottom: 10,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppBottom(
                    size: 55,
                    color: AppColors.textColor1
                    , backgroundcolor: Colors.white
                    , bordercolor: AppColors.textColor1,
                    hasIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(width: 15,),
                  MyResBottom(
                    isResponsive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
