import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum UploadedListAction { action }

class UploadedListActionCreator {
  static Action onAction() {
    return const Action(UploadedListAction.action);
  }
}
