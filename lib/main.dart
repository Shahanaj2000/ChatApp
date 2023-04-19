import 'package:chatappfirebase/helpers/helper_function.dart';
import 'package:chatappfirebase/pages/auth/login_page.dart';
import 'package:chatappfirebase/pages/home_page.dart';
import 'package:chatappfirebase/shared/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    // run the initialization to web
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: Constants.apiKey,
          appId: Constants.appId,
          messagingSenderId: Constants.messagingSenderId,
          projectId: Constants.projectId),
    );
  } else {
    // run the initialization to android and ios
    await Firebase.initializeApp(); 
  }
  
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSignedIn = false;
  
  @override
  void initState() {
    
    super.initState();
    getUserLoggedIn();
  }

  //.......
  getUserLoggedIn() async{
    await HelperFunction.getUserLoggedInStatus().then((value) {
    if (value != null) {
      setState(() {
        _isSignedIn = value;
      });
      
    }
    });
}

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'ChatApp Firebase',
      theme: ThemeData(
        primaryColor: Constants.primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: _isSignedIn ?  const HomePage() : const LoginPage(),
    );
  }
}


