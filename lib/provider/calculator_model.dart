import 'package:calculatorapp/widgets/input_detail.dart';
import 'package:flutter/material.dart';

class CalculatorModel extends ChangeNotifier {
  List<Widget> userInputs = [];
  String? options = '';
  int? intOptions = 0;

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

  List<int> gradePoints = [5, 4, 3, 2, 1, 0];

  void getValue(int? value) {
    intOptions = value;
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

  void totalResult() {}
}
