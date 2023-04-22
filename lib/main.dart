import 'package:flutter/material.dart';
import 'package:flutter_app/screen/screen.dart';

import 'FadeAnimation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Beautiful Registration Form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          accentColor: Colors.orange,
          primaryColor: Colors.blue,
          focusColor: Colors.blue,
          buttonColor: Colors.blue),
      home: FadeAnimation(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

// flutter login and registration template
class _HomepageState extends State<Homepage> {
  bool isLoginSelected = true;
  bool maleSelected = true;
  bool femaleSelected = false;
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 64, 69, 77),
            Color.fromARGB(255, 64, 69, 77)
          ])),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                titleText(),
                SizedBox(
                  height: 30,
                ),
                toggleButton(),
                isLoginSelected ? SizedBox() : usernameField(),
                emailField(),
                passwordField(),
                isLoginSelected ? SizedBox() : confirmPasswordField(),
                !isLoginSelected ? SizedBox() : forgotPassword(),
                isLoginSelected
                    ? SizedBox()
                    : Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  maleSelected = true;
                                  femaleSelected = false;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                      height: 20,
                                      width: 20,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white60)),
                                      child: maleSelected
                                          ? Container(
                                              margin: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white70),
                                            )
                                          : SizedBox()),
                                  Text('Male',
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 14.5))
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  femaleSelected = true;
                                  maleSelected = false;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                      height: 20,
                                      width: 20,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white60)),
                                      child: femaleSelected
                                          ? Container(
                                              margin: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white70),
                                            )
                                          : SizedBox()),
                                  Text('Female',
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 14.5))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                SizedBox(
                  height: 40,
                ),
                button1(),
                SizedBox(
                  height: 53,
                ),
                Text(
                    isLoginSelected
                        ? 'Don\'t have an account?'
                        : 'Already have an account?',
                    style: TextStyle(color: Colors.white70, fontSize: 13)),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 53,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white60),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(isLoginSelected ? 'Register' : 'Login',
                      style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // flutter login and registration template
  Widget titleText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isLoginSelected ? 'Log' : 'Sign',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                    color: Colors.black45, offset: Offset(1, 1), blurRadius: 5)
              ]),
        ),
        Text(
          isLoginSelected ? ' In' : ' Up',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade700,
              shadows: [
                Shadow(
                    color: Colors.black45, offset: Offset(1, 1), blurRadius: 5)
              ]),
        ),
      ],
    );
  }

// flutter login and registration template
  Widget usernameField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.black26)
              ],
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                  colors: [Colors.blue.shade200, Colors.blue.shade900])),
          child: TextField(
            style: TextStyle(color: Colors.white, fontSize: 14),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              hintText: 'Enter username',
              hintStyle: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ));
  }

  Widget emailField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.black26)
              ],
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                  colors: [Colors.blue.shade200, Colors.blue.shade900])),
          child: TextField(
            style: TextStyle(color: Colors.white, fontSize: 14),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              hintText: 'Enter email',
              hintStyle: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ));
  }

  // flutter login and registration template
  Widget passwordField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.black26)
              ],
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                  colors: [Colors.blue.shade200, Colors.blue.shade900])),
          child: TextField(
            obscureText: isPasswordVisible ? false : true,
            style: TextStyle(color: Colors.white, fontSize: 14),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              suffixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  child: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              hintText: 'Enter password',
              hintStyle: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ));
  }

  // flutter login and registration template
  Widget confirmPasswordField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.black26)
              ],
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                  colors: [Colors.blue.shade200, Colors.blue.shade900])),
          child: TextField(
            obscureText: isConfirmPasswordVisible ? false : true,
            style: TextStyle(color: Colors.white, fontSize: 14),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              suffixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isConfirmPasswordVisible = !isConfirmPasswordVisible;
                    });
                  },
                  child: Icon(
                    isConfirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              hintText: 'Confirm password',
              hintStyle: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ));
  }

  Widget button1() {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Clicked')));
      },
      child: Container(
        height: 53,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 4, color: Colors.black26, offset: Offset(5, 5))
            ],
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
                colors: [Colors.blue.shade200, Colors.blue.shade900])),
        child: Text(isLoginSelected ? 'Login' : 'Signup',
            style: TextStyle(
                color: Colors.white.withOpacity(.8),
                fontSize: 15,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  // flutter login and registration template design ui
  Widget toggleButton() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 40,
        width: 150,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(4, 4),
                  blurRadius: 5,
                  spreadRadius: 0,
                  color: Colors.black26)
            ],
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: [Colors.blue.shade200, Colors.blue.shade900])),
        child: Row(
          // flutter login and registration template source code design UI
          children: [
            !isLoginSelected
                ? Expanded(
                    child: Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          print('tap');
                          isLoginSelected = true;
                        });
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ))
                : Expanded(
                    child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(4, 4),
                              blurRadius: 5,
                              spreadRadius: 0,
                              color: Colors.black26)
                        ],
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(colors: [
                          Colors.blue.shade200,
                          Colors.blue.shade900
                        ])),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
            isLoginSelected
                ? Expanded(
                    child: Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          print('tap');
                          isLoginSelected = false;
                        });
                      },
                      child: Text(
                        'Signup',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ))
                : Expanded(
                    child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(4, 4),
                              blurRadius: 5,
                              spreadRadius: 0,
                              color: Colors.black26)
                        ],
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(colors: [
                          Colors.blue.shade200,
                          Colors.blue.shade900
                        ])),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ))
          ],
        ),
      ),
    );
  }

  // flutter login and registration template design code
  Widget forgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 30),
        child: InkWell(
          onTap: () {
            // can navigate to other screen or perform some other action
          },
          child: Text(
            'Forgot password?',
            style: TextStyle(
                color: Colors.white.withOpacity(.9),
                fontSize: 12,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
