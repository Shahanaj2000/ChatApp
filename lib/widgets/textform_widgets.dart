
import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),

  // when we focused
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 0, 102, 0), width: 2)),

  // when we are not focused
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 0, 102, 0), width: 2)),
  // error
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 0, 102, 0), width: 2)),
);

// Navigate to next page
void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

// Navigate to next pagereplacemant
void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

//snakBar
void showSnackBar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(fontSize: 14),
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(label: 'Ok', onPressed: () {}, textColor: Colors.white,),
    ),
  );
}
