
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main()  {
  runApp(MyApp());
} 


  //  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  // runApp( MyApp());

class MyApp  extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: HomePage(),
    
      
    );
  }
}
Future<void> requestcameraPermission()async{
  var status = await Permission.camera.request();
  if(status == PermissionStatus.granted){
    print("Camera permission is granted");
  }else if(status == PermissionStatus.denied){
    print("Camera permission is denied");
  }   
    else{
      print("Camera permission is permanently denied");
    }
}
Future<void> requestmicrophonePermission() async{
  var status = await Permission.microphone.request();
  if(status == PermissionStatus.granted){
    print("Microphone permission is granted");  
  }
  else if(status == PermissionStatus.denied){
    print("Microphone permission is denied");
  }
  else{
    print(
      "Microphone permission is permanently denied"
    );
  }
}
Future<void> requestlocationpermission() async{
  var status = await Permission.microphone.request();
  if(status == PermissionStatus.granted){
    print("Microphone permission is granted");  
  }
  else if(status == PermissionStatus.denied){
    print("Microphone permission is denied");
  }
  else{
    print(
      "Microphone permission is permanently denied"
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
        appBar: AppBar(
          title: Text('Firebase Messaging Demo'),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              ElevatedButton(onPressed:requestcameraPermission , child: Text("Camera")),
              ElevatedButton(onPressed:requestmicrophonePermission , child: Text("microphone" )),
              ElevatedButton(onPressed:requestlocationpermission, child: Text("Location" )),
            ],
          ),
        )
        
      ) ;
  }
}
