import 'package:flutter/material.dart';
import 'package:login_auth/components/custom_button.dart';
import 'package:login_auth/components/custom_text_field.dart';
import 'package:login_auth/components/square_tile.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

void signUserIn() {}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 45.0),
              Icon(Icons.lock, size: 100.0),
              SizedBox(height: 45.0),
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(color: Colors.grey.shade700, fontSize: 16.0),
              ),
              SizedBox(height: 45.0),
              CustomTextField(
                controller: widget.usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              SizedBox(height: 10.0),
              CustomTextField(
                controller: widget.passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              CustomButton(onTap: signUserIn),
              SizedBox(height: 45),
              Row(
                children: [
                  Expanded(
                    child: Divider(thickness: 0.5, color: Colors.grey.shade400),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                  Expanded(
                    child: Divider(thickness: 0.5, color: Colors.grey.shade400),
                  ),
                ],
              ),
              SizedBox(height: 45.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquareTile(imagePath: 'assets/img/google.png'),
                  SizedBox(width: 25.0),
                  SquareTile(imagePath: 'assets/img/apple.png'),
                ],
              ),
              SizedBox(height: 45.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?'),
                  SizedBox(width: 4.0),
                  Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
