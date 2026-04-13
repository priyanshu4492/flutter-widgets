import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  int score = 0;

  List<Map<String, Object>> questions = [
    {
      "question": "What is Flutter?",
      "options": ["SDK", "Language", "Database", "OS"],
      "answer": 0
    },
    {
      "question": "Which language is used in Flutter?",
      "options": ["Java", "Kotlin", "Dart", "C++"],
      "answer": 2
    },
    {
      "question": "Who developed Flutter?",
      "options": ["Apple", "Microsoft", "Google", "Meta"],
      "answer": 2
    },
    {
      "question": "Which widget is used for layout?",
      "options": ["Container", "Text", "Icon", "Image"],
      "answer": 0
    }
  ];

  void checkAnswer(int selectedIndex) {
    if (selectedIndex == questions[currentQuestion]["answer"]) {
      score++;
    }

    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(score: score, total: questions.length),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var q = questions[currentQuestion];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Q${currentQuestion + 1}. ${q["question"]}",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
        
              ...(q["options"] as List<String>).asMap().entries.map((entry) {
                int idx = entry.key;
                String option = entry.value;
        
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ElevatedButton(
                    onPressed: () => checkAnswer(idx),
                    child: Text(option),
                  ),
                );
              }).toList()
            ],
          ),
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int score;
  final int total;

  const ResultScreen({super.key, required this.score, required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Result")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Score: $score / $total",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            Text(
              score > total / 2 ? "You Passed 🎉" : "You Failed 😢",
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Restart Quiz"),
            )
          ],
        ),
      ),
    );
  }
}