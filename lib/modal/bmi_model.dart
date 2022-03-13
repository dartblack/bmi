class Bmi {
  double weight;
  double height;
  double bmi = 0;

  Bmi(this.weight, this.height) {
    calculate();
  }

  void calculate() {
    bmi = (weight / height / height) * 10000;
  }

  @override
  String toString() {
    return bmi.floor().toString();
  }
}
