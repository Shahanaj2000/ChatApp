import 'package:chatappfirebase/shared/constants.dart';
import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
   labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),

   // when we focused
   focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFee7b64), width: 2)
   ),

    // when we are not focused
   enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFee7b64), width: 2)
   ),
  // error
   errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFee7b64), width: 2)
   ),
);

// Navigate to next page
void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

// Navigate to next pagereplacemant
void nextScreenReplace(context, page) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page));
}