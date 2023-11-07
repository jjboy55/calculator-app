import 'package:calculatorapp/widgets/input_detail.dart';
import 'package:flutter/material.dart';

class CalculatorModel extends ChangeNotifier {
  List<Widget> userInputs = [];
  List<int> gradePoints = [5, 4, 3, 2, 1, 0];
  List<int?> totalGpa = [];
  List<int?> totalUnit = [];
  int? value = 0;
  String? options = '';
  int? intOptions = 0;
  int? gradeUnit = 0;
  int? gradeTotal = 0;

  List<DropdownMenuEntry<String>> dropdownMenuEntries = [
    const DropdownMenuEntry(value: 'A', label: 'A'),
    const DropdownMenuEntry(value: 'B', label: 'B'),
    const DropdownMenuEntry(value: 'C', label: 'C'),
    const DropdownMenuEntry(value: 'D', label: 'D'),
    const DropdownMenuEntry(value: 'E', label: 'E'),
    const DropdownMenuEntry(value: 'F', label: 'F'),
  ];

  List<DropdownMenuEntry<int>> dropdownMenuEntriesint = [
    const DropdownMenuEntry(value: 1, label: '1'),
    const DropdownMenuEntry(value: 2, label: '2'),
    const DropdownMenuEntry(value: 3, label: '3'),
    const DropdownMenuEntry(value: 4, label: '4'),
  ];

  void getValue(int? value) {
    intOptions = value;
  }

  void getGrade(String? value) {
    options = value;
  }

  Map<String, int> valuePair() {
    List<String> grades = dropdownMenuEntries.map((e) => e.value).toList();
    Map<String, int> gradeMap = Map.fromIterables(grades, gradePoints);
    return gradeMap;
  }

  void addItems(FormDetails inputDetails) {
    userInputs.add(inputDetails);
    notifyListeners();
  }

  void removeAll() {
    userInputs.clear();
    notifyListeners();
  }

  void remove(int index) {
    userInputs.removeAt(index);
    notifyListeners();
  }

  int? getCourseWeight() {
    Map<String, int> gradeValues = valuePair();
    gradeValues[options];
    return gradeValues[options];
  }

  void getGradeUnit() {
    gradeUnit = getCourseWeight()! * intOptions!;
    notifyListeners();
  }

  void addTotaltoList() {
    getGradeUnit();
    totalGpa.add(gradeUnit);
    notifyListeners();
  }

  void addSumOfUnits() {
    totalUnit.add(intOptions);
  }

  int sumValues() {
    int sum = 0;
    for (int? element in totalGpa) {
      if (element != null) {
        sum += element;
      }
    }
    return sum;
  }

  int sumUnits() {
    int sum = 0;
    for (int? element in totalUnit) {
      if (element != null) {
        sum += element;
      }
    }
    return sum;
  }

  double totalGpaScore() {
    double gpaScore = sumValues() / sumUnits();
    return gpaScore;
  }
}
