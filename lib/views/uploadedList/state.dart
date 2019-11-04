import 'package:fish_redux/fish_redux.dart';

class UploadedListState implements Cloneable<UploadedListState> {

  @override
  UploadedListState clone() {
    return UploadedListState();
  }
}

UploadedListState initState(Map<String, dynamic> args) {
  return UploadedListState();
}
