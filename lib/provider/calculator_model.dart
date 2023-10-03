import 'package:calculatorapp/widgets/input_detail.dart';
import 'package:flutter/material.dart';

class CalculatorModel extends ChangeNotifier {
  List<Widget> userInputs = [];
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  List<TextEditingController> controllerList = [];
  List<TextEditingController> controllerList2 = [];

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

  String? letter;

  int? valuePair() {
    List<String> grades = dropdownMenuEntries.map((e) => e.value).toList();
    Map<String, int> gradeMap = Map.fromIterables(grades, gradePoints);
    return gradeMap[controller.text];
  }

  void addItems(InputDetails inputDetails) {
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

  void addController() {
    controllerList.add(controller);
    controllerList2.add(controller2);
  }

  int? calculateGpa() {
    int? weight = valuePair();
    int? gradePoint = weight! * int.parse(controller2.text);
    return gradePoint;
  }

  void gpaResult() {
    print(calculateGpa());
    controller.clear();
    controller2.clear();
    notifyListeners();
  }
}
