import 'package:flutter/material.dart';
import 'package:food_delivery/ui/pages/auth/sign_in_page.dart';
import 'package:food_delivery/ui/pages/auth/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showSignInPage = true;

  void togglePage() {
    setState(() {
      showSignInPage = !showSignInPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignInPage) {
      return SignInPage(
        onTap: togglePage,
      );
    }
    return SignUpPage(
      onTap: togglePage,
    );
  }
}
