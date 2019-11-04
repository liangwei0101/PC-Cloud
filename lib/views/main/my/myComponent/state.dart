import 'package:fish_redux/fish_redux.dart';

class MyComponentState implements Cloneable<MyComponentState> {

  @override
  MyComponentState clone() {
    return MyComponentState();
  }
}

MyComponentState initState(Map<String, dynamic> args) {
  return MyComponentState();
}
