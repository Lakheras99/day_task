import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    var heightButton = MediaQuery.of(context).size.height;
    var widthButton = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(widthButton * 0.05),
      width: widthButton * 0.9,
      height: heightButton * 0.068,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffFED36A),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,

          ),
        ),
      ),
    );
  }
}
