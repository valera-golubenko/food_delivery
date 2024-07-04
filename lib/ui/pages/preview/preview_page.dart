import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/ui/pages/auth/login_page.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF354854),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 70),
              SvgPicture.asset(
                'assets/img/logo_car.svg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(
                  Color(0xFFFFAA15),
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(height: 90),
              const Expanded(
                child: Text(
                  'Food for Everyone',
                  style: TextStyle(
                    color: Color(0xFFFFAA15),
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black54,
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFAA15),
                    ),
                  ),
                ),
              )._wrap,
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

extension _WidgetExt on Widget {
  Widget get _wrap {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: this,
    );
  }
}
