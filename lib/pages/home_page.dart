import 'package:flutter/material.dart';
import 'package:todo/utility/create_task.dart';
import 'package:todo/utility/todo_tile.dart';
import 'package:todo/utility/create_task.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  List itemlist = [
    ['Buy Milk', false],
    ['Buy Eggs', true],
    ['Buy Bread', false],
    ['Buy Butter', false],
    ['Buy Cheese', false],
  ];

  void OnChanged(int index, bool? value) {
    setState(() {
      itemlist[index][1] = value;
    });
  }

  void CreateNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogueBox(controller: _controller);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[300],
        appBar: AppBar(
          title: const Text('Todo App'),
          centerTitle: true,
          backgroundColor: Colors.amber,
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: CreateNewTask,
          child: const Icon(Icons.add),
          backgroundColor: Colors.amber[800],
        ),
        body: ListView.builder(
          itemCount: itemlist.length,
          itemBuilder: (context, index) {
            return TodoTile(
              name: itemlist[index][0],
              isDone: itemlist[index][1],
              onChanged: (value) => OnChanged(index, value),
            );
          },
        ));
  }
}
