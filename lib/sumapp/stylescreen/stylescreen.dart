import 'package:flutter/material.dart';

InputDecoration AppInputStyle(label){
  return InputDecoration(
    contentPadding: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
    fillColor: Colors.white,
    filled: true,
    labelText: label,
    border: OutlineInputBorder(),

  );
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.green,
    shape:RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5))
    )
  );
}

TextStyle AppTextStyle(){
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800
  );

}