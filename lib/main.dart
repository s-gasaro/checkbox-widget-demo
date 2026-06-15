import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SurveyPage(),
    );
  }
}

// Survey Screen
class SurveyPage extends StatefulWidget {
  const SurveyPage({super.key});

  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  // tracks selected option
  String selected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALU Student Survey'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // survey question
            const Text(
              'Are you an ALU Student?',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 24),

            // Option 1
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  // PROPERTY 1: value — controls if checkbox is checked or not
                  value: selected == 'yes',
                  // PROPERTY 2: activeColor — changes color when checked
                  activeColor: Colors.orange,
                  // PROPERTY 3: onChanged — runs when user taps the checkbox
                  onChanged: (v) {
                    setState(() => selected = 'yes');
                  },
                ),
                const Text('Yes!!!!', style: TextStyle(fontSize: 16)),
              ],
            ),

            // Option 2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: selected == 'no',
                  activeColor: Colors.orange,
                  onChanged: (v) {
                    setState(() => selected = 'no');
                  },
                ),
                const Text('No, but I wish 😭', style: TextStyle(fontSize: 16)),
              ],
            ),

            // Option 3
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: selected == 'applying',
                  activeColor: Colors.orange,
                  onChanged: (v) {
                    setState(() => selected = 'applying');
                  },
                ),
                const Text('Still applying 🤞', style: TextStyle(fontSize: 16)),
              ],
            ),

            const SizedBox(height: 24),

            // response based on selection
            if (selected == 'yes')
              const Text('Welcome home! 🔥',
                  style: TextStyle(fontSize: 18, color: Colors.orange)),
            if (selected == 'no')
              const Text('You are missing out!',
                  style: TextStyle(fontSize: 18, color: Colors.red)),
            if (selected == 'applying')
              const Text('Good luck, we are rooting for you! 🤞',
                  style: TextStyle(fontSize: 18, color: Colors.green)),

          ],
        ),
      ),
    );
  }
}