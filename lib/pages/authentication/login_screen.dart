import 'package:cip_website/config/app_urls.dart';
import 'package:cip_website/config/http_handler/helper_function.dart';
import 'package:cip_website/config/http_handler/http_handlers.dart';
import 'package:cip_website/pages/contract/contract_screen.dart';
import 'package:cip_website/pages/authentication/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isObscure = true;
  String? email;
  String? password;

  // Future<bool> isValidUser(String email, String password) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? userData = prefs.getString('users');

  //   if (userData == null) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text('Don`t have any account signup first.'),
  //         backgroundColor: Colors.red,
  //       ),
  //     );
  //     return false;
  //   } else {
  //     Map<String, String> usersMap = Map<String, String>.from(
  //       json.decode(userData),
  //     );
  //     return usersMap[email] == password;
  //   }

  //   // email = prefs.getString('email');
  //   // password = prefs.getString('password');
  // }

  bool isEmailValid(String email) {
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9]+([._%+-]?[a-zA-Z0-9])*@[a-zA-Z0-9.-]+\.[a-zA-Z]{3,}$",
    );
    return emailRegex.hasMatch(email);
  }

  void isValidate() async {
    final email = emailController.text;
    final password = passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      if (!isEmailValid(email)) {
        showErrorToast('Please enter a valid email');
        return;
      }

      if (password.length < 6) {
        showErrorToast('Password must be 6 characters long');
        return;
      }

      final response = await postRequesthandler(
        url: AppUrls.login,
        data: {"email": email, "password": password},
      );

      if (response != null && response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContractScreen()),
        );
      } else {
        showErrorToast('Login failed. Please check your credentials.');
      }
    } else {
      showErrorToast('Please fill all the fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Form(
          key: formKey,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    width: size.width * 0.25,
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (emailController.text == null ||
                            emailController.text.isEmpty) {
                          return 'Please enter email';
                        } else if (!(isEmailValid(emailController.text))) {
                          return 'Please enter valid email';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        hintText: 'Enter email',
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),

                        // focusedBorder: OutlineInputBorder(
                        //   borderRadius: ,
                        //   borderSide: BorderSide(color: Colors.black),
                        // ),
                        // errorBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.black),
                        // ),
                        // focusedErrorBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.black),
                        // ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    width: size.width * 0.25,
                    child: TextFormField(
                      obscureText: isObscure,
                      controller: passwordController,
                      validator: (value) {
                        if (passwordController.text == null ||
                            passwordController.text.isEmpty) {
                          return "Please enter password";
                        } else if (passwordController.text.length < 6) {
                          return "Password must be 6 characters long";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        hintText: 'Enter passsword',
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          child: Icon(
                            isObscure ? Icons.visibility_off : Icons.visibility,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      bool isValid = formKey.currentState!.validate();
                      if (isValid) {
                        isValidate();
                      }
                    },
                    child: Container(
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Don`t have an account? '),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Signup',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
