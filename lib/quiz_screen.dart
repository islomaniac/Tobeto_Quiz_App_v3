import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizappv3/data/questions.dart';
import 'package:quizappv3/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // ignore: unused_field
  final PageController _controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Colors.white;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text("Soru ${index + 1} /${questions.length}",
                      style: GoogleFonts.quicksand(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 29,
                      )),
                ),
                const Divider(
                  color: Colors.white,
                  height: 8,
                  thickness: 2.0,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  questions[index].question,
                  style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 29,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                for (int i = 0; i < questions[index].answers.length; i++)
                  // ignore: avoid_unnecessary_containers
                  Container(
                    margin: const EdgeInsets.only(bottom: 18),
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          backgroundColor: isPressed
                              ? questions[index].answers.entries.toList()[i].value
                                  ? isTrue
                                  : isWrong
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: isPressed
                            ? () {}
                            : () {
                                setState(() {
                                  isPressed = true;
                                });
                                if (questions[index].answers.entries.toList()[i].value) {
                                  score += 10;
                                  // ignore: avoid_print
                                  print(score);
                                }
                              },
                        child: Text(
                          questions[index].answers.keys.toList()[i],
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        )),
                  ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: isPressed
                          ? index + 1 == questions.length
                              ? () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(score)));
                                }
                              : () {
                                  _controller.nextPage(
                                      duration: const Duration(milliseconds: 300), curve: Curves.linear);
                                  setState(() {
                                    isPressed = false;
                                  });
                                }
                          : null,
                      child: Text(index + 1 == questions.length ? "Sonucu Gör" : "Sıradaki Soru",
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
