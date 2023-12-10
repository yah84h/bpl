part of '../../utils/import/u_import.dart';

//import data
final List<ModelProgLang> initData = ControllerProgLang().dataProgLang;

/// [ProviderProgLang] class provider
class ProviderProgLang with ChangeNotifier {
  ///[_progLang] data
  final List<ModelProgLang> _progLang = initData;
  List<ModelProgLang> get progLang => _progLang;

  final List<ModelProgLang> _myList = [];
  List<ModelProgLang> get myList => _myList;

  void addToList(ModelProgLang progLang) {
    _myList.add(progLang);
    notifyListeners();
  }

  void removeFromList(ModelProgLang progLang) {
    _myList.remove(progLang);
    notifyListeners();
  }
}
