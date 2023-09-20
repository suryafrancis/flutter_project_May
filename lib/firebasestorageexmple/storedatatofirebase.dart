import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart'as path;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: firestorageee(),
  ));
}



class firestorageee extends StatefulWidget {
  const firestorageee({Key? key}) : super(key: key);

  @override
  State<firestorageee> createState() => _firestorageeeState();
}

class _firestorageeeState extends State<firestorageee> {
  FirebaseStorage storage= FirebaseStorage.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Firebase Storage"),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                      onPressed: ()=>upload('Camera'),

                      icon: const Icon(Icons.camera_alt),
                      label: const Text("Camera")),
                  ElevatedButton.icon(
                      onPressed: () =>upload('Gallery'),
                      icon: const Icon(Icons.photo),
                      label: const Text("Gallery")),
                ],
              ),
              Expanded(
                  child: FutureBuilder(
                      future: loadData(),
                      builder: (context,
                          AsyncSnapshot<List<Map<String, dynamic>>> snaphot) {
                        if (snaphot.connectionState == ConnectionState.done) {
                          return ListView.builder(
                            itemCount:snaphot.data?.length??0
                              ,
                              itemBuilder: (context, index) {
                                final Map<String,dynamic> image=snaphot.data![index];
                                return Card(
                                 child: ListTile(
                                   leading: Image.network(image['url']),
                                   title: Text(image['uploaded_by']),
                                   subtitle: Text(image['description']),
                                   trailing: IconButton(
                                     onPressed: (){
                                       deleteimage(image['path']);
                                     },icon: Icon(Icons.delete)),
                                   ));
                              });
                        }
                        return Center(child: CircularProgressIndicator());
                      }))
            ],
          ),
        ));
  }

  Future<List<Map<String,dynamic>>>loadData()async {
    List<Map<String,dynamic>> images=[];
    final ListResult result =await storage.ref().list();
    final List<Reference> allfiles=result.items;

    await Future.forEach(allfiles, (singlefiles) async {
      final String fileurl =await singlefiles.getDownloadURL();
      final FullMetadata filemeta =await singlefiles.getMetadata();

      images.add({
        'url': fileurl,
        'path':singlefiles.fullPath,
        'uploaded_by':filemeta.customMetadata?['uploaded_by']?? 'No data',
        'description':filemeta.customMetadata?['description']??'No description'
      });

    });
    return images;
  }

 Future<void> upload(String imginput) async{
    final picker =ImagePicker();
    XFile?pickedImage;/// store image path
   try{
     pickedImage=
     await picker.pickImage(
       source: imginput=='camera'? ImageSource.camera:ImageSource.gallery,
     maxWidth: 1920);
     final String filename=path.basename(pickedImage!.path);
     File imageFile=File(pickedImage.path);
     try{
       await storage.ref(filename).putFile(imageFile,SettableMetadata(
         customMetadata: {
           'uploaded_by':"it me xxxxxx",
           'description':'some descrrtion'
         }
       ));
       setState(() {});
     }on FirebaseException catch(e){
       print(e);
     }
   }catch(e){
     print(e);
   }
 }

  Future<void> deleteimage(String imagepath)async {
    await storage.ref(imagepath).delete();
    setState(() {

    });
  }
}
