import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class UploadedListPage extends Page<UploadedListState, Map<String, dynamic>> {
  UploadedListPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<UploadedListState>(
                adapter: null,
                slots: <String, Dependent<UploadedListState>>{
                }),
            middleware: <Middleware<UploadedListState>>[
            ],);

}
