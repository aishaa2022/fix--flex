import 'package:fix_flex/models/custom_clippers.dart';
import 'package:fix_flex/screens/register_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../components/default_form_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPasswordShow = true;
  bool index = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          ClipPath(
            clipper: FirstClipper(),
            child: Container(
              color: const Color(0xffd7e0e6),
            ),
          ),
          ClipPath(
            clipper: SecondClipper(),
            child: Container(
              color: const Color(0xff92d3f3),
            ),
          ),
          ClipPath(
            clipper: ThirdClipper(),
            child: Container(
              color: const Color(0xff306686),
            ),
          ),
          ClipPath(
            clipper: FourthClipper(),
            child: Container(
              color: const Color(0xff134161),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        'assets/images/fixFlex3.png',
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      //Email TFF
                      defaultFormField(
                        controller: emailController,
                        keyType: TextInputType.emailAddress,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'emai can\'t be empty';
                          }
                          return null;
                        },
                        prefix: Icons.email,
                        label: 'Email',
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      //Password TFF
                      defaultFormField(
                        controller: passwordController,
                        keyType: TextInputType.visiblePassword,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Password Can\'t be empty';
                          }
                          return null;
                        },
                        prefix: Icons.lock,
                        label: 'Password',
                        suffix: isPasswordShow
                            ? Icons.visibility
                            : Icons.visibility_off,
                        suffixPressed: () {
                          setState(() {
                            isPasswordShow = !isPasswordShow;
                          });
                        },
                        isPassword: isPasswordShow,
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = !index;
                              });
                            },
                            child: Container(
                                alignment: Alignment.center,
                                height: 19,
                                width: 21,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: index
                                    ? Icon(
                                        Icons.check,
                                        size: 20,
                                      )
                                    : Container()),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password ?",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 70,
                      ),

                      //Login Button
                      Container(
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff134161),
                          // color: Color(0xff222a32),
                        ),
                        child: TextButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              if (kDebugMode) {
                                print('email: ${emailController.text}');
                              }
                              if (kDebugMode) {
                                print('password: ${passwordController.text}');
                              }
                            }
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              // color: Color(0xff222a32),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      //Register line
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Don\'t have an account ?',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              ));
                            },
                            child: const Text(
                              'Register Now',
                              style: TextStyle(color: Color(0xff66a3d5)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
