import 'package:flutter/material.dart';
class TaskPrinter extends StatefulWidget {
  String title = "";
  String description = "";
  TaskPrinter({required this.title, required this.description});
  @override
  State<TaskPrinter> createState() => _TaskPrinterState(title: title, description: description);
}

class _TaskPrinterState extends State<TaskPrinter> {
  Map data = {};
  List<Map> tasks =[];
  String title = "";
  String description = "";

  _TaskPrinterState({required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
      data= {"title" : title, "description": description};
      tasks.add(data);
      print(title + description);
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index){
          return Card(
            child: Column(
              children: <Widget>[ListTile(
                onTap: (){},
                title: Text("${tasks[index]["title"]}"),
              ),
              ListTile(
                onTap: (){},
                title: Text("${tasks[index]["description"]}"),
              ),
              ],
            ),
          );
        }
    );
  }
}
