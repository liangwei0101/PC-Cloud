import 'package:fish_redux/fish_redux.dart';
import 'package:photo_manager/photo_manager.dart';

class FileComponentState implements Cloneable<FileComponentState> {

  List<AssetPathEntity> assetPathEntityList = new List();

  @override
  FileComponentState clone() {
    return FileComponentState()
      ..assetPathEntityList = this.assetPathEntityList;
  }
}

FileComponentState initState(Map<String, dynamic> args) {
  return FileComponentState();
}
