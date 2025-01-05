import 'package:flutter/material.dart';
import 'package:todo/utility/create_task.dart';
import 'package:todo/utility/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  List itemlist = [];

  void OnChanged(int index, bool? value) {
    setState(() {
      itemlist[index][1] = !itemlist[index][1];
    });
  }

  void SavenewTask() {
    if (_controller.text.isEmpty) {
      return;
    }
    setState(() {
      itemlist.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void CreateNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogueBox(
              controller: _controller,
              onSave: SavenewTask,
              onCancel: () => Navigator.of(context).pop());
        });
  }

  void deleteTask(int index) {
    setState(() {
      itemlist.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: const Text('Todo App'),
          centerTitle: true,
          backgroundColor: Colors.amber[300],
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: CreateNewTask,
          backgroundColor: Colors.amber[500],
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: itemlist.length,
          itemBuilder: (context, index) {
            return TodoTile(
              name: itemlist[index][0],
              isDone: itemlist[index][1],
              onChanged: (value) => OnChanged(index, value),
              deletefunction: (context) => deleteTask(index),
            );
          },
        ));
  }
}
