import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizappv3/quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/trophy.png"),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text(
                  "Flutter Quiz Uygulamasına Hoşgeldiniz!",
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 60,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Oval şekli burada belirleyebilirsiniz
                    ),
                  ),
                  child: const Text("Quize Başla"),
                ),
              )
            ]),
      ),
    );
  }
}
