import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int totalScore;
  final VoidCallback reset;
  const Result(this.totalScore, this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Vous avez fini le quizz !!"),
          Text("Avec $totalScore points"),
          TextButton(onPressed: reset, child: const Text("Recommencer"))
        ],
      ),
    );
  }
}
