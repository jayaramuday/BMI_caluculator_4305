import 'dart:math';

class CaluculatorBrain {
  CaluculatorBrain({required this.height, required this.weight}) : _bmi = 0;

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'overWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'go to gym man';
    } else if (_bmi > 18.5) {
      return 'ok but go to gym';
    } else {
      return 'Eat and go to gym';
    }
  }
}
