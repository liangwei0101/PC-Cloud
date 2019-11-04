import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FileComponentPage extends Page<FileComponentState, Map<String, dynamic>> {
  FileComponentPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FileComponentState>(
                adapter: null,
                slots: <String, Dependent<FileComponentState>>{
                }),
            middleware: <Middleware<FileComponentState>>[
            ],);

}
