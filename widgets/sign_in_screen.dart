import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'reset_password_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Логотип
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
              height: 80,
            ),
            const SizedBox(height: 24),
            // Поле Email / Логін
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email:',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Поле Пароль
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password:',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Кнопка Sign Up
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                  );
                },
                child: const Text('Sign up'),
              ),
            ),
            const SizedBox(height: 8),
            // Кнопки Login та Reset password в один рядок
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext ctx) {
                          return const AlertDialog(
                            title: Text('Message'),
                            content: Text('Need to implement'),
                          );
                        },
                      );
                    },
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResetPasswordScreen(),
                        ),
                      );
                    },
                    child: const Text('Reset password'),
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