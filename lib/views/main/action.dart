import 'package:fish_redux/fish_redux.dart';

enum MainAction { action, changeIndex }

class MainActionCreator {
  static Action onAction() {
    return const Action(MainAction.action);
  }

  static Action onChangeIndexAction(int currentIndex) {
    print(currentIndex);
    return Action(MainAction.changeIndex, payload: currentIndex);
  }
}
