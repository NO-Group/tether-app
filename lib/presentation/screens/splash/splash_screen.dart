import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../services/supabase_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAuth();
  }

  Future<void> _checkAuth() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    
    final session = SupabaseService().auth.currentSession;
    if (session != null) {
      context.go('/clubs');
    } else {
      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFF00D4FF),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Center(
                child: Text(
                  'T',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 56,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Tether',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontFamily: 'NovaRound',
              ),
            ),
            const SizedBox(height: 48),
            const CircularProgressIndicator(
              color: Color(0xFF00D4FF),
              strokeWidth: 3,
            ),
          ],
        ),
      ),
    );
  }
}
