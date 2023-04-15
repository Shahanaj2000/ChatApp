import 'package:chatappfirebase/pages/auth/register_page.dart';
import 'package:chatappfirebase/widgets/textform_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";
  //! formKey
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 80,
            ),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Groupiee",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Login now to see what they are talking!",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                  Image.asset("/home/ubantu/chatappfirebase/assets/login.png"),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(
                      labelText: 'Email',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    onChanged: (val) {
                      setState(() {
                        email = val;
                      });
                    },
                    //Check the validation
                    validator: (val) {
                      return RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(val!)
                          ? null
                          : "Please enter the valid email";
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: textInputDecoration.copyWith(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    onChanged: (val) {
                      setState(() {
                        password = val;
                      });
                    },

                    //Check the validation
                    validator: (val) {
                      if (val!.length < 6) {
                        return "Password must be atleast 6 character";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //....
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                      
                      onPressed: () {
                        logIn();
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    
                  ),
                  const SizedBox(height: 10,),

                  Text.rich(
                     TextSpan(
                      text: "Don't have an account? ",
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                      
                      children: <TextSpan>[
                        TextSpan(
                          text: "Register Here",
                          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,decoration: TextDecoration.underline,),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            nextScreen(context, const RegisterPage());
                          }
                        )
                      ]
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  logIn() {

  }
}