import 'package:fix_flex/models/custom_clippers.dart';
import 'package:fix_flex/screens/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../components/default_form_field.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({
    super.key,
  });

  @override
  State<RegisterScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterScreen> {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var addressController = TextEditingController();
  var phoneNumController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  String _selectRole = selectRole[1];

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
                        height: 40,
                      ),
                      // Image.asset(
                      //   'assets/images/fixFlex3.png',
                      //   width: 100,
                      //   height: 100,
                      // ),
                      // const SizedBox(
                      //   height: 40,
                      // ),

                      //first name TFF
                      defaultFormField(
                        controller: firstNameController,
                        keyType: TextInputType.name,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'name can\'t be empty';
                          }
                          return null;
                        },
                        prefix: Icons.person,
                        label: 'First Name',
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //Last Name TFF
                      defaultFormField(
                        controller: lastNameController,
                        keyType: TextInputType.name,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'last name can\'t be empty';
                          }
                          return null;
                        },
                        prefix: Icons.person,
                        label: 'Last Name',
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // //Adssress TFF

                      // defaultFormField(
                      //   controller: addressController,
                      //   keyType: TextInputType.name,
                      //   validate: (value) {
                      //     if (value!.isEmpty) {
                      //       return 'address can\'t be empty';
                      //     }
                      //     return null;
                      //   },
                      //   prefix: Icons.home,
                      //   label: 'Address',
                      // ),
                      // const SizedBox(
                      //   height: 30,
                      // ),
                      // //Phone Number TFF
                      // defaultFormField(
                      //   controller: phoneNumController,
                      //   keyType: TextInputType.number,
                      //   validate: (value) {
                      //     if (value!.isEmpty) {
                      //       return 'phone number can\'t be empty';
                      //     }
                      //     return null;
                      //   },
                      //   prefix: Icons.phone,
                      //   label: "Phone Number",
                      // ),

                      // const SizedBox(
                      //   height: 30,
                      // ),
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
                        height: 30,
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
                      const SizedBox(
                        height: 30,
                      ),
                      //Select tasker or user

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        width: 330,
                        decoration: BoxDecoration(
                            color: Color(0xffd7e0e5),
                            borderRadius: BorderRadius.circular(20)),
                        child: DropdownButton(
                          isExpanded: true,
                          iconEnabledColor: Color(0xff134161),
                          icon: const Icon(Icons.expand_circle_down),
                          value: _selectRole,
                          items: selectRole.map((String item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(),
                              ),
                            );
                          }).toList(),
                          onChanged: (Value) {
                            setState(() {
                              _selectRole = Value ?? "";
                            });
                          },
                        ),
                      ),

                      SizedBox(
                        height: 50,
                      ),

                      //Register Button
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
                            'Register',
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
                            'already have an account ?',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                            },
                            child: const Text(
                              'Login Now',
                              style: TextStyle(
                                color: Color(0xff66a3d5),
                              ),
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

List<String> selectRole = ["Tasker", "User"];
