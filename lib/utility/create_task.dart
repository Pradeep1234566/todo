import 'package:flutter/material.dart';
import 'package:todo/utility/my_button.dart';

class DialogueBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogueBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.amber[100],
      title: const Text(
        'Create New Task',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(hintText: 'Task Name'),
            ),
          ),
          Row(
            children: [
              MyButton(
                name: 'Create',
                onClick: () {},
              ),
              const SizedBox(width: 10),
              MyButton(
                name: 'Cancel',
                onClick: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
