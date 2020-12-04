import 'package:flutter/material.dart';


const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);



const kMessageTextFeildDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  hintText: 'Type your message here ...',
  border: InputBorder.none,
);


const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2)
  ),
);


const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your value',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

