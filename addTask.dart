import 'package:flutter/material.dart';
import 'package:untitled/taskprinter.dart';
import 'package:untitled/allTasks.dart';
class addTask extends StatefulWidget {
  List<Map> tasks = [];
  addTask({required this.tasks});

  @override
  State<addTask> createState() => _addTaskState(tasks: tasks);
}

class _addTaskState extends State<addTask> {
  List<Map> tasks = [];
  _addTaskState({required this.tasks});

  @override
  Widget build(BuildContext context) {
    print(tasks);
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    String title = "";
    String description = "";
    return Scaffold(
      body: Column(
        children: <Widget>[
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/addtask_image.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: "Task Title",
                border: OutlineInputBorder(),
              ),
              maxLength: 20,
              keyboardType: TextInputType.text,
              onChanged: (text){
                title = text;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: descriptionController,
              maxLength: 75,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "Task Description",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
              onChanged: (text){
                description = text;
              },
            ),
          ),
          SizedBox(
            width: 250,
            height: 50,
            child: RaisedButton(
                onPressed: (){
                  if(title!="" && description!=""){
                    tasks.add({"title": title, "description": description});
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>allTasks(tasks: tasks,),)
                    );
                  }
                  else{
                        showDialog(context: context, builder: (_)=>AlertDialog(
                          title: Text("Minimum Character Limit"),
                          content: Text("Text and description parts cannot be left empty."),
                        ));
                  }
                },
              color: Colors.blue[900],
              child: Text(
                  "Add",
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

