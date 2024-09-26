// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_learningapp/components/button.dart';
import 'package:e_learningapp/constants/constants.dart';
import 'package:flutter/material.dart';

import '../components/container.dart';
import '../components/text.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScafold,
      appBar: AppBar(
        backgroundColor: kScafold,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: kPrimary,
          ),
        ),
        centerTitle: true,
        title: Text(
          'LOG IN',
          style: TextStyle(
            color: kPrimary,
          ),
        ),
        elevation: 4,
      ),
      body: Center(
        child: ContainerCard(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              text(
                textswidget: 'Learning App',
                fontSized: 25,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                textAlign: TextAlign.center,
                'Enter your log in details to access your account',
                style: TextStyle(
                  // letterSpacing: 2,
                  color: kPrimary,
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kButtonFbBlue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    ),
                    label: Text(
                      'Facebook',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton.icon(
                    icon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kButtonFbOrange,
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    ),
                    label: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: kPrimary,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kPrimary,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: kPrimary,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          activeColor: kPrimary,
                          checkColor: kButtonFbBlue,
                          value: remember,
                          side: BorderSide(
                            color: kPrimary, width: 2.0, // The border width
                          ),
                          onChanged: (value) {
                            setState(() {
                              remember = value!;
                            });
                          }),
                      Text(
                        'Remeber Me ?',
                        style: TextStyle(
                          color: kPrimary,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Forget Password ?',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonCard(
                      text: 'Log in with your Account ',
                      Pressed: () {
                        Navigator.pushNamed(context, '/learning');
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an Account ?',
                            style: TextStyle(
                              color: kPrimary,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Create Account',
                            style: TextStyle(
                              color: kButtonFbOrange,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
