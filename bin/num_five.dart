void assignGrades(List<int> scores) {
  int best = scores[0];

  for (int i = 1; i < scores.length; i++) {
    if (scores[i] > best) {
      best = scores[i];
    }
  }

  for (int i = 0; i < scores.length; i++) {
    int score = scores[i];
    String grade;

    if (score >= best - 10) {
      grade = 'A';
    } else if (score >= best - 20) {
      grade = 'B';
    } else if (score >= best - 30) {
      grade = 'C';
    } else if (score >= best - 40) {
      grade = 'D';
    } else {
      grade = 'F';
    }

    print('Student ${i + 1} score is $score and grade is $grade');
  }
}

void main() {
  List<int> scores = [40, 45, 70, 58];

  print(scores);
  assignGrades(scores);
}