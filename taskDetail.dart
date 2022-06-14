import 'package:flutter/material.dart';
import 'package:untitled/allTasks.dart';
class taskDetail extends StatefulWidget {
  List<Map> tasks = [];
  int index = 0;
  taskDetail({required this.tasks, required this.index});

  @override
  State<taskDetail> createState() => _taskDetailState(tasks: tasks, index: index);
}

class _taskDetailState extends State<taskDetail> {

  List<Map> tasks = [];
  int index = 0;
  TextEditingController title_controller = TextEditingController();
  TextEditingController description_controller = TextEditingController();
  _taskDetailState({required this.tasks, required this.index});

  @override
  Widget build(BuildContext context) {
    String title = tasks[index]["title"];
    String description = tasks[index]["description"];
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/image_alltasks.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: title_controller..text="${tasks[index]["title"]}",
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: "Title",
              ),
              maxLength: 20,
              onChanged: (text){
                 title= text;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: description_controller..text="${tasks[index]["description"]}",
              decoration: InputDecoration(
                labelText: "Description",
                border:OutlineInputBorder(),
              ),
              maxLines: 3,
              maxLength: 75,
              onChanged: (text){
                description = text;
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.blue[900],
                  onPressed: (){
                  if(title!="" && description!=""){
                    tasks[index]["title"] = title;
                    tasks[index]["description"] = description;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>allTasks(tasks: tasks)
                    ));
                  }
                  else{
                    showDialog(context: context, builder: (_)=>AlertDialog(
                      title: Text("Minimum Character Limit"),
                      content: Text("Text and description parts cannot be left empty."),
                    ));
                  }
                },
                child: Text(
                    "Save",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 100,),
              RaisedButton(
                color: Colors.red,
                  onPressed: (){
                  tasks.removeAt(index);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>allTasks(tasks: tasks)
                  ));
                  },
                child: Text(
                    "Delete",
                  style: TextStyle(color: Colors.white, fontSize: 17,),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
