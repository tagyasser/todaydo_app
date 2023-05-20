import 'package:flutter/material.dart';
import 'package:todaydo_app/screens/add_task_screen.dart';
import 'package:todaydo_app/widgets/tasks_list.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: 
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
           builder:(context)=> SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).
                viewInsets.bottom ),
              child: AddTaskScreen(),
              ),
              ),
           );
        },
        backgroundColor: Colors.pink[400],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.pink[500],
      body: Container(
        padding:const EdgeInsets.only(
          top:60,
           left: 20,
            right: 20,
             bottom: 80,
             ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.playlist_add_check,size: 40,
                color: Colors.white,
                ),
                SizedBox(width: 20),
                Text('TodayDO',style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
            Text('4 Tasks', style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.
                  circular(20),
                  ),
                ),
                child:TasksList()
              ),
            ),
          ],
        ),
      ),
    );
  }
}

