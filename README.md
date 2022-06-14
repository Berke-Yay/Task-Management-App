# Task-Management-App
A task management app created by Flutter

The logic is simple. In the app, users can create as many different tasks as they want with a title and a description. Later on they should can view these tasks and get their details. Also they can delete the tasks when they want. And of course, the details and title of the tasks can be changed when wanted.

In this app, there are 4 main pages which are named Home, All Tasks, Add Task and Task Detail.
#Home Page is the initial route in the application which displays a greeting screen. From this page users can go to either Add Task or All Tasks Page.
#Add Task is the page where users create new task. When creating a task, users have to provide a title and a description. If one or both of them is left empty, the app will throw an alert to inform the user. When users click the "Add" button the data they entered is sent to All Tasks Page.
#All Tasks is the page where users can view all of the tasks with their title. The tasks are listed in a Listview.builder. Users can also see the total number of tasks, go to the Home or Add Task Page. Furthermore, this is the only page where they can go to Task Detail Page.
#In Task Detail page, users can view and change the title and description of the tasks. They can also delete the completed tasks from this page. But as mentioned in Add Task, the title and descripton parts cannot be left empty if the task is about to be saved.

For further details, just execute the code files attached to this repository.
