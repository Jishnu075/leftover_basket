import 'package:flutter/material.dart';

const kBoldSmallTextStyle = TextStyle(
    color: Color.fromARGB(255, 33, 33, 33), fontWeight: FontWeight.w700);

const kBoldBigTextStyle = TextStyle(
    color: Color.fromARGB(255, 33, 33, 33),
    fontWeight: FontWeight.w700,
    fontSize: 30.0);

var kTextFieldDecoration = InputDecoration(
    prefixIcon: const Icon(Icons.email),
    iconColor: Colors.black,
    hintText: '',
    contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)));

const kYellowColor = Color.fromARGB(255, 255, 203, 17);

const kButtonTextStyle = TextStyle(
    color: Color.fromARGB(255, 33, 33, 33),
    fontWeight: FontWeight.w700,
    fontSize: 20.0);
