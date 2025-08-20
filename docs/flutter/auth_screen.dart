import 'package:flutter/material.dart';

/// Simple authentication screen with options to create an account or sign in.
///
/// This widget mirrors the layout shown in the reference screenshot: a logo at
/// the top, followed by "Criar Conta" and "Entrar" buttons and a set of legal
/// disclaimers. At the bottom there is a help link for account problems.
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF87B9E7),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            // Logo placeholder. Replace with your asset.
            Column(
              children: const [
                Icon(
                  Icons.local_fire_department,
                  size: 80,
                  color: Colors.white,
                ),
                SizedBox(height: 8),
                Text(
                  'QUEM ME QUER?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF87B9E7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('CRIAR CONTA'),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('ENTRAR'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Ao clicar em Criar a Conta ou Entrar, você concorda com nossos Termos. '
                    'Entenda como usamos seus dados em nossa Política de Privacidade '
                    'e Política de Cookies.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Problemas com sua conta?',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

