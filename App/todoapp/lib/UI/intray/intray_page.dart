import 'package:flutter/material.dart';
import 'package:todoapp/modles/classes/task.dart';
import 'package:todoapp/modles/global.dart';
import 'package:todoapp/modles/widgets/todo_card.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<Task> taskList = [];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    taskList = getList();
    return Container(
      color: darkGrey,
      child: _buildReorderableListSimple(context, taskList),
    );
  }

  Widget _buildListTile(BuildContext context, Task item) {
    return ListTile(
      key: Key(item.taskId.toString()),
      title: TodoCard(
        title: item.title,
        keyValue: item.taskId.toString(),
      ),
    );
  }

  Widget _buildReorderableListSimple(
      BuildContext context, List<Task> taskList) {
    return Theme(
      data: ThemeData(canvasColor: Colors.transparent),
      child: ReorderableListView(
        // handleSide: ReorderableListSimpleSide.Right,
        // handleIcon: Icon(Icons.access_alarm),
        padding: EdgeInsets.only(top: 250.0),
        children:
            taskList.map((Task item) => _buildListTile(context, item)).toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            Task item = taskList[oldIndex];
            taskList.remove(item);
            taskList.insert(newIndex, item);
          });
        },
      ),
    );
  }

  // ignore: unused_element
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Task item = taskList.removeAt(oldIndex);
      taskList.insert(newIndex, item);
    });
  }

  List<Task> getList() {
    for (int i = 0; i < 10; i++) {
      taskList.add(
        Task(
          "My first todo " + i.toString(),
          false,
          i.toString(),
        ),
      );
    }
    return taskList;
  }
}
