import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nyehaat_id/common/styles.dart';

class GenderPicker extends ChangeNotifier {
  bool _isMale = true;

  bool get isMale => _isMale;

  set isMale(bool value) {
    this._isMale = value;
    notifyListeners();
  }

  get color => _isMale ? primaryColor : Colors.grey;
  get maleColor => _isMale ? primaryColor : Colors.grey;
  get femaleColor => _isMale ? primaryColor : Colors.grey;
}
