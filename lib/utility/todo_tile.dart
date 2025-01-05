import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String name;
  final bool isDone;
  final void Function(bool?)? onChanged;

  const TodoTile(
      {super.key, required this.name, required this.isDone, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
      child: Container(
        // ignore: sort_child_properties_last
        child: Row(
          children: [
            Checkbox(
                value: isDone,
                onChanged: onChanged,
                activeColor: Colors.deepPurple),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  decoration: isDone ? TextDecoration.lineThrough : null, 
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
