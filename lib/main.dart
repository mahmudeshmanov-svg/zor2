import 'package:flutter/material.dart';
import 'screens/flashcard_screen.dart';
import 'screens/quiz_screen.dart';

void main() => runApp(const LearnLockApp());

class LearnLockApp extends StatelessWidget {
  const LearnLockApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LearnLock',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF58CC02)),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('🦉', style: TextStyle(fontSize: 80)),
              const SizedBox(height: 16),
              const Text('LearnLock', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("Ingliz tilini o'ynab o'rgan!", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 48),
              _btn(context, '🃏 Kartalar', const Color(0xFF1CB0F6), const FlashcardScreen()),
              const SizedBox(height: 16),
              _btn(context, '🧠 Test', const Color(0xFF58CC02), const QuizScreen()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _btn(BuildContext context, String label, Color color, Widget screen) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => screen)),
        child: Text(label, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
