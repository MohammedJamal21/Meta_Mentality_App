import 'package:flutter/material.dart';

class Modules extends ChangeNotifier {
  Map<int, dynamic> mymap = {
    1: {
      'id': '1',
      'maintainSize': false,
      'visible': false,
      'description': 'Begrr.',
    },
    2: {
      'id': '2',
      'maintainSize': false,
      'visible': false,
      'description': 'Vad gt. ',
    },
    3: {
      'id': '3',
      'maintainSize': false,
      'visible': false,
      'description': 'Problemetort.',
    },
    4: {
      'id': '4',
      'maintainSize': false,
      'visible': false,
      'description': 'En otydligtgt. ',
    },
    5: {
      'id': '4',
      'maintainSize': false,
      'visible': false,
      'description': 'En otydligtgt. ',
    },
    6: {
      'id': '4',
      'maintainSize': false,
      'visible': false,
      'description': 'En otydligtgt. ',
    },
    7: {
      'id': '4',
      'maintainSize': false,
      'visible': false,
      'description': 'En otydligtgt. ',
    },
  };

  int counter = 1;

  void changeVisibiltyAndSize() {
    mymap[counter]['visible'] = true;

    counter++;
    notifyListeners();
  }
}
