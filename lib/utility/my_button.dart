import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  final VoidCallback onClick;
  const MyButton({super.key, required this.name, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.only(top: 5),
      onPressed: onClick,
      color: Colors.amber,  
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Text(name),
    );
  }
}

