import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  VoidCallback onClick;
  MyButton({super.key, required this.name, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      
      padding: EdgeInsets.only(top: 5),
      onPressed: onClick,
      child: Text(name),
      color: Colors.amber,
      // padding: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}
