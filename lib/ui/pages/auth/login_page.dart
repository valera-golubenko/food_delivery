import 'package:flutter/material.dart';
import 'package:food_delivery/ui/pages/auth/components/app_form_field.dart';
import 'package:food_delivery/ui/views/buttons/app_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xFF354854),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
          child: ListView(
            children: [
              const Icon(
                Icons.lock,
                size: 100,
                color: Colors.black54,
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xFFFFAA15),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              AppFormField(
                controller: emailController,
                hintText: 'Email',
              ),
              const SizedBox(height: 20),
              AppFormField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 30),
              AppButton(
                onTap: () {},
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black54,
                  ),
                  child: const Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFAA15),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Color(0xFFFFAA15),
                    ),
                  ),
                  Text(
                    'Or continue with',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFAA15),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Color(0xFFFFAA15),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 2,
                          color: Colors.white,
                        ),
                      ),
                      child: Image.asset('assets/icons/icon_google.png'),
                    ),
                  ),
                  const SizedBox(width: 50),
                  AppButton(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 2,
                          color: Colors.white,
                        ),
                      ),
                      child: Image.asset('assets/icons/icon_apple.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not a member?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFAA15),
                    ),
                  ),
                  const SizedBox(width: 4),
                  AppButton(
                    onTap: () {},
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
