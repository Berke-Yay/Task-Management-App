import 'package:flutter/material.dart';
import 'package:untitled/addTask.dart';
import 'package:untitled/allTasks.dart';
class HomePage extends StatefulWidget {
  List<Map> tasks = [];
  HomePage({required this.tasks});
  @override
  State<HomePage> createState() => _HomePageState(tasks: tasks,);
}

class _HomePageState extends State<HomePage> {
  List<Map> tasks = [];
  _HomePageState({required this.tasks});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[300],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/homebg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30,),
            Text(
              "Hello",
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
            Text(
              "Start your beatiful day",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 300,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 250,
                  height: 50,
                  child: RaisedButton(
                    onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>addTask(tasks: tasks)));
                    },
                    color: Colors.blue[900],
                    child: Text(
                      "Add Task",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 250,
                  height: 50,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context)=>allTasks(tasks: tasks)
                      )
                      );
                    },
                    color: Colors.white,
                    child: Text(
                      "View all",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );;
  }
}
