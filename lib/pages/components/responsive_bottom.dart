import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/pages/components/app_text.dart';
import 'package:travel/pages/shared/colors.dart';

class MyResBottom extends StatelessWidget {
  MyResBottom({this.width=100,this.isResponsive=false, super.key, });
double? width;
bool? isResponsive;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true ? double.maxFinite: width,
        height: 55,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(10),


        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isResponsive==true ? Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: MyText(text:"Book trip now",color: Colors.white,),
            ):Container() ,
            Image.asset("img/button-one.png",)
          ],
        ),
      ),
    );
  }
}
