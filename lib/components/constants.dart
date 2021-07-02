import 'package:flutter/material.dart';

const kUserInputDecoration = InputDecoration(
  isDense: true,
  filled: true,
  fillColor: Colors.white,
  hintText: "Enter Username...",
  hintStyle: TextStyle(
    color: Colors.grey,
    fontSize: 18,
  ),
  contentPadding: EdgeInsets.only(
    top: 20.0,
    left: 10.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const kPasswordInputDecoration = InputDecoration(
  isDense: true,
  filled: true,
  fillColor: Colors.white,
  hintText: "Enter Password...",
  hintStyle: TextStyle(
    color: Colors.grey,
    fontSize: 18,
  ),
  contentPadding: EdgeInsets.only(
    top: 20.0,
    left: 10.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const Color adminbg = Color(0xFF40394A);
const Color buttonColor = Color(0xFFEB596E);

class TextFieldDecoration extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final Function onChanged;
  final TextInputType textInputType;
  final int maxLength;
  const TextFieldDecoration({this.hintText,@required this.controller,@required this.onChanged,this.textInputType,this.maxLength,});

  @override
  _TextFieldDecorationState createState() => _TextFieldDecorationState();
}

class _TextFieldDecorationState extends State<TextFieldDecoration> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: widget.maxLength,
      maxLengthEnforced: true,
      keyboardType: widget.textInputType,
      onChanged: widget.onChanged,
      controller: widget.controller,
      style: TextStyle(
        height: 1.2,
        color: Colors.black,
        fontSize: 18.0,
      ),
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18,
        ),
        contentPadding: EdgeInsets.only(
          top: 20.0,
          left: 10.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class QuestionTextField extends StatefulWidget {
  final Function onChanged;
  final TextEditingController controller;
  final String hintText;
  final maxLines = 5;
  const QuestionTextField({@required this.onChanged,@required this.controller,@required this.hintText,});

  @override
  _QuestionTextFieldState createState() => _QuestionTextFieldState();
}

class _QuestionTextFieldState extends State<QuestionTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: widget.maxLines * 24.0,
      child: TextField(
        maxLines: widget.maxLines,
        onChanged: widget.onChanged,
        controller: widget.controller,
        style: TextStyle(
          height: 1.2,
          color: Colors.black,
          fontSize: 18.0,
        ),
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
          contentPadding: EdgeInsets.only(
            top: 20.0,
            left: 10.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

