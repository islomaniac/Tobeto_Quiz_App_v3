import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizappv3/home_screen.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score, {super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Tebrikler!",
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 8,
              thickness: 2.0,
            ),
            const Divider(
              color: Colors.black,
              height: 8,
              thickness: 2.0,
            ),
            Text(
              "Puanınız:",
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(fontSize: 45, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "${widget.score}",
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 90,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
              color: Colors.black,
              child: Text(
                "Quizi Tekrar Et",
                style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
