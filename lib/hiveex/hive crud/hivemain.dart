import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
void main()async{
  await Hive.initFlutter();
  await Hive.openBox('todobox');
  runApp(MaterialApp(
    builder: FToastBuilder(),
    home: CRUD_HIVE(),));
}
class CRUD_HIVE extends StatefulWidget {
  const CRUD_HIVE({Key? key}) : super(key: key);

  @override
  State<CRUD_HIVE> createState() => _CRUD_HIVEState();
}

class _CRUD_HIVEState extends State<CRUD_HIVE> {
  List<Map<String,dynamic>> task=[];
  final tname=TextEditingController();
  final tcontent=TextEditingController();

  // creating box
  final box=Hive.box('todobox');
  @override
  void initState() {
    refreshorreadui();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MY TODO"),),
      body: task.isEmpty
          ?const Center(child: CircularProgressIndicator())
    : ListView.builder(
    itemCount: task.length,
    itemBuilder: (context,index){
      return Card(
      child: ListTile(
      leading: const Icon(Icons.task),
    title: Text(task[index]['taskname']),
    subtitle: Text(task[index]['taskcontent']),
    trailing: Wrap(
    children: [
      IconButton(onPressed: (){
        creatoredittask(task[index]['id']);
      }, icon: Icon(Icons.edit)),
    IconButton(onPressed: (){
      deletetask(task[index]['id']);
    }, icon: Icon(Icons.delete))
    ],
    ),
      ),
      );
    }),
    floatingActionButton: FloatingActionButton.extended(
    onPressed: ()=>creatoredittask(null),
    label: Icon(Icons.add)),
    );
  }

 void creatoredittask(int? itemkey) {
    if(itemkey!=null){
      final existing_task = task.firstWhere((element) => element['id']==itemkey);
      tname.text =existing_task['taskname'];
      tcontent.text=existing_task['taskcontent'];
    }
    showModalBottomSheet(
      isScrollControlled: true,
        elevation: 5,
        context: context, builder: (context){
      return Container(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom+120,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: tname,
              decoration: InputDecoration(
                hintText: 'TaskName'
              ),
            ),
            TextField(
              controller: tcontent,
              decoration: InputDecoration(
                  hintText: 'TaskContent'
              ),
            ),
            ElevatedButton(onPressed: (){
              if(itemkey==null){
                createTask({
                  "task_name":tname.text.trim(),
                  "task_cont":tcontent.text.trim()
                });
              }
              if(itemkey!=null){
                editTAsk(itemkey,{
              "task_name":tname.text.trim(),
              "task_cont":tcontent.text.trim()
              });
              }
              tname.text="";
              tcontent.text="";
              Navigator.pop(context);
            }, child: Text(
              itemkey==null?'Create Task':'Edit Task'
            ))
          ],
        ),
      );
    });

 }

 Future <void> createTask(Map<String, dynamic> newtask)async {
  await box.add(newtask);
  refreshorreadui();
 }

  void refreshorreadui() {
    //fetch all the keys from hive in accesinding order
    final taskfromhive =box.keys.map((key) {
      final mapofsinglekey = box.get(key);
      return {
        'id': key, // key 1 key 2 etc
        'taskname': mapofsinglekey['task_name'],// listname and hive name
        'taskcontent': mapofsinglekey['task_cont']
      };
    }).toList();
    setState(() {
      task=taskfromhive.reversed.toList();
    });

  }

 Future <void> editTAsk(int itemkey, Map<String, dynamic> editedtask)async {
    await box.put(itemkey,editedtask);
  refreshorreadui();
  }

 Future <void> deletetask( int itemkey) async{
    await box.delete(itemkey);
    refreshorreadui();
    Fluttertoast.showToast(
        msg: "Successfully Deleted",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );

 }
}
