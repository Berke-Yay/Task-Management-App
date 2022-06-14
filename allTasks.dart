import 'package:flutter/material.dart';
import 'package:untitled/addTask.dart';
import 'package:untitled/home.dart';
import 'package:untitled/taskDetail.dart';
class allTasks extends StatefulWidget {
  List<Map> tasks;
  allTasks({required this.tasks});

  @override
  State<allTasks> createState() => _allTasksState(tasks: tasks);
}

class _allTasksState extends State<allTasks> {
  int counter = 0;

  //Map data;
  List<Map> tasks =[];
  String title = "";
  String description = "";

  _allTasksState({required this.tasks});


  @override
  Widget build(BuildContext context) {
    counter = tasks.length;
    int control_counter = counter;
    //data= {"title" : title, "description": description};
    //tasks.add(data);
    print(tasks);

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
          Row(
            children: <Widget>[
              IconButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>HomePage(tasks: tasks,),
                  )
                  );
                },
                icon: Icon(
                    Icons.home,
                  size: 35,
                ),
              ),
              SizedBox(width: 5,),


              IconButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>addTask(tasks: tasks,),
                  )
                  );
                },
                icon: Icon(Icons.add_circle_rounded),
                iconSize: 35,
                  ),
              SizedBox(width: 200,),
              Icon(
                  Icons.article,
                size: 30,
              ),
              Text(
                  "$counter",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index){
            return Container(
              child: ListTile(
                onTap: () async{
                  await Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>taskDetail(tasks: tasks, index: index,)
                  ));
                },
                title: Text("${tasks[index]["title"]}"),
              ),
            );
          },
            itemCount: tasks.length,
          )
        ],
      ),

    );

  }
}
