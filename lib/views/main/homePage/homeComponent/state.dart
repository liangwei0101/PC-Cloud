import 'package:fish_redux/fish_redux.dart';

class HomeComponentState implements Cloneable<HomeComponentState> {

  @override
  HomeComponentState clone() {
    return HomeComponentState();
  }
}

HomeComponentState initState(Map<String, dynamic> args) {
  return HomeComponentState();
}
