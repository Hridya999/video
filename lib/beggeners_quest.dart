import 'package:flutter/material.dart';

import 'Video&quest.dart';
class Question {
  final String questionText;
  final List<String> options;
  final String correctAnswer;

  Question(this.questionText, this.options, this.correctAnswer);
}



class Beggners_quest extends StatefulWidget {
  @override
  _Beggners_questState createState() => _Beggners_questState();
}

class _Beggners_questState extends State<Beggners_quest> {
  int currentQuestionIndex = 0;
  List<Question> questions = [
    Question(
      'What is the capital of France?',
      ['Madrid', 'Berlin', 'Rome', 'Paris'],
      'Paris',
    ),
    Question(
      'Which river is the longest in the world?',
      ['Amazon', 'Nile', 'Yangtze', 'Mississippi'],
      'Nile',
    ),
    Question(
      'Mount Everest, the highest peak, is located in which mountain range?',
      ['Andes', 'Rocky Mountains', 'Himalayas', 'Alps'],
      'Himalayas',
    ),
    Question(
      'Which continent is known as the "Land Down Under"?',
      ['Europe', 'Africa', 'Australia', 'Asia'],
      'Australia',
    ),
    // Add more questions here
  ];

  late String selectedOption = ''; // Initialize with an empty string
  bool showCorrectAnswer = false;

  @override
  void initState() {
    super.initState();
    selectedOption = questions[currentQuestionIndex].options[0];
  }

  void selectOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  void goToNextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedOption = questions[currentQuestionIndex].options[0];
        showCorrectAnswer = false;
      });
    } else {
      // Handle end of questionnaire
      print('Geography quiz completed');
    }
  }

  void goToPreviousQuestionOrBack() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
        selectedOption = questions[currentQuestionIndex].options[0];
        showCorrectAnswer = false;
      });
    } else {
      // Navigate back to the previous page
      Navigator.of(context).pop();
    }
  }

  void showAnswerDialog() {
    final currentQuestion = questions[currentQuestionIndex];
    bool isCorrectAnswer = selectedOption == currentQuestion.correctAnswer;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(isCorrectAnswer ? 'Correct!' : 'Incorrect!'),
          content: Text(
            isCorrectAnswer
                ? 'Congratulations! Your answer is correct.'
                : 'Sorry, your answer is incorrect. The correct answer is: ${currentQuestion.correctAnswer}',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                if (isCorrectAnswer || showCorrectAnswer) {
                  goToNextQuestion();
                }
              },
              child: Text('Next Question'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Card(
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => goToPreviousQuestionOrBack(),
                ),
                Expanded(
                  child: Text(
                    currentQuestion.questionText,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VidesQust()));
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: currentQuestion.options.map((option) {
                return RadioListTile<String>(
                  title: Text(option),
                  value: option,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    if (!showCorrectAnswer) {
                      setState(() {
                        selectedOption = value!;
                        showCorrectAnswer = true;
                      });
                      showAnswerDialog();
                    }
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => goToNextQuestion(),
              child: Text(
                currentQuestionIndex < questions.length - 1 ? 'Next' : 'Finish',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

