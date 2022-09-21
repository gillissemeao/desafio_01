import 'package:flutter/material.dart';

import 'logo.dart';

class Mockup01 extends StatelessWidget {
  const Mockup01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            const Logo(),
            const SizedBox(height: 35),
            const Text('Get Your Money\nUnder Control',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 35)),
            const SizedBox(height: 12),
            const Text(
              'Manage your expenses\nSeamlessly.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const SizedBox(height: 55),
            SizedBox(
              width: 300,
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5E5CE5)),
                  onPressed: () {},
                  child: const Text('Sign Up with Email ID')),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 300,
              height: 45,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/google.png', height: 25),
                      const SizedBox(width: 12),
                      const Text('Sign Up with Google',
                          style: TextStyle(color: Colors.black)),
                    ],
                  )),
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
