import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MyComponentAction { action }

class MyComponentActionCreator {
  static Action onAction() {
    return const Action(MyComponentAction.action);
  }
}
