import 'package:chatappfirebase/services/auth_services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthServices authServices = AuthServices();
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            authServices.signOut();
          },
          child: const Text('LogOut'),
        ),
      ),
    );
  }
}
