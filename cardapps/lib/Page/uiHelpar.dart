import 'package:flutter/material.dart';
TextStyle mytextStyle({
  Color textColors=Colors.black ,
  FontWeight fontWeight =FontWeight.normal,
 double ?fontSize =20,

}){
  return TextStyle(fontSize: fontSize,color: textColors,fontWeight: fontWeight);
}