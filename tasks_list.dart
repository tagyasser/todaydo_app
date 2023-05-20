import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';
import 'package:todaydo_app/widgets/task_list.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'company selection'),
    Task(name: 'company history '),
    Task(name: 'company service '),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          taskTile: tasks[0].name,
          isChecked: tasks[0].isDone,
        ),
        TaskTile(
          taskTile: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
        TaskTile(
          taskTile: tasks[2].name,
          isChecked: tasks[2].isDone,
        ),
      ],
    );
  }
}

