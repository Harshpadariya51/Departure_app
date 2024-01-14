import 'package:departure_gita/model/lang_model.dart';
import 'package:flutter/cupertino.dart';

class LangProvider extends ChangeNotifier {
  IsLangModel isLangModel = IsLangModel(isLang: false);
  void changeLang() {
    isLangModel.isLang = !isLangModel.isLang;
    notifyListeners();
  }
}
