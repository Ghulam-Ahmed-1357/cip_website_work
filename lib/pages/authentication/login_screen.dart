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
      r"^[a-zA-Z0-9]+([._%+-]?[a-zA-Z0-9])*@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
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
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                Container(
                  width: size.width * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 1,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      hintText: 'Enter email',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: size.width * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 1,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: TextField(
                    obscureText: isObscure,
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      hintText: 'Enter passsword',
                      border: InputBorder.none,
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        child: Icon(
                          isObscure ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: isValidate,
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
                            builder: (context) => SiginupScreen(),
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
    );
  }
}
