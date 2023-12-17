import 'package:flutter/cupertino.dart';

import 'app_text.dart';

class AppBottom extends StatelessWidget {

  double? size = 60;
  bool? hasIcon = false;
  final Color color;
  final Color backgroundcolor;
  final Color bordercolor;
  String? text = "hi";
  IconData? icon;
  AppBottom({super.key , this.size, required this.color, required this.backgroundcolor, required this.bordercolor,
    this.hasIcon,this.text,this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: size,
      height: size,
      decoration:BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: bordercolor,width: 1.0),
      ),
      child: hasIcon==false? Center(child: MyText(text:text!,color: color,),):Center(child: Icon(icon,color: color,),),
    );
  }
}
