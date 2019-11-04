import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeComponentAction { action , uploadFile}

class HomeComponentActionCreator {
  static Action onAction() {
    return const Action(HomeComponentAction.action);
  }

  static Action onUploadFileAction() {
    return const Action(HomeComponentAction.uploadFile);
  }

}
