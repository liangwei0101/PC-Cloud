import 'package:fish_redux/fish_redux.dart';

class MainState implements Cloneable<MainState>  {

  int selectIndex = 0;

  @override
  MainState clone() {
    return MainState()
      ..selectIndex = this.selectIndex;
  }
}

MainState initState(Map<String, dynamic> args) {
  return MainState();
}
