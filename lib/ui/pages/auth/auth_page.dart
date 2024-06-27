import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/ui/views/fields/email_input_field.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF354854),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(50, 120, 50, 0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/img/logo.svg',
                    width: 140,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 55),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(30, 16, 30, 10),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 5,
                              color: const Color(0xFFFFAA15),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFFAA15),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.fromLTRB(30, 16, 30, 10),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 5,
                              color: const Color(0xFFFFAA15),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Sign-Up',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFFAA15),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 62),
            Column(
              children: [
                const Text(
                  'Email address',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFAA15),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            )
          ],
        ),
      ),
    );
  }
}
