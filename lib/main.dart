import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'screens/Home/homeScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'screens/auth/loginHome.dart';
import 'screens/auth/signln.dart';

Future<void> main() async {
  Object? UserData = {};
  Object? AdminData = {};
  String UID = "null";
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  FlutterSecureStorage storage = const FlutterSecureStorage();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  var Uid = await storage.read(key: "UID");
  if (Uid != null) {
    UID = Uid;
    final DocumentSnapshot snapshot =
        await FirebaseFirestore.instance.collection("users").doc(UID).get();
    final _data = snapshot.data();
    UserData = _data;
  }

  runApp(MyApp( UserData as Map, UID!));
}

class MyApp extends StatelessWidget {
  final Map UserData;
  final String UID;

  MyApp(
    this.UserData,
    this.UID,
  );

  @override
  Widget build(BuildContext context) {
    // FlutterNativeSplash.remove();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Uet Services',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: UID != "null"
                ? homeScreen(
                    UserData: UserData,
                  )
                : loginHome(
                  ));
  }
}
